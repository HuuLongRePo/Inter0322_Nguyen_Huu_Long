/*21.	Tạo khung nhìn có tên là v_nhan_vien 
để lấy được thông tin của tất cả các nhân viên
có địa chỉ là “Hải Châu” 
và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kìv_nhan_vien
với ngày lập hợp đồng là “12/12/2019”.*/

CREATE VIEW v_nhan_vien AS
    SELECT 
        `ho_ten`,
        `ngay_sinh`,
        `so_cmnd`,
        `luong`,
        `so_dien_thoai`,
        `email`,
        `dia_chi`,
        `ma_vi_tri`,
        `ma_trinh_do`,
        `ma_bo_phan`
    FROM
        nhan_vien
            INNER JOIN
        hop_dong ON hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
    WHERE
        nhan_vien.dia_chi LIKE '%Hải Châu%'
            AND DATE_FORMAT(hop_dong.ngay_lam_hop_dong, '%Y-%m-%d') = DATE_FORMAT('2019-12-12', '%Y-%m-%d');


/*22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu”
đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.*/

SET SQL_SAFE_UPDATES=0;
UPDATE v_nhan_vien 
SET 
    dia_chi = 'Liên Chiểu';


/*23.	Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó
với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.*/
delimiter //
CREATE PROCEDURE sp_xoa_khach_hang ( id int  )
BEGIN
alter table khach_hang;
SET FOREIGN_KEY_CHECKS=0;-- to disable them
DELETE FROM khach_hang 
WHERE
    khach_hang.ma_khach_hang = id;
alter table khach_hang;
SET FOREIGN_KEY_CHECKS=1; -- to re-enable them
END; //
delimiter ;
call sp_xoa_khach_hang(2);


/*
24.	Tạo Stored Procedure sp_them_moi_hop_dong
dùng để thêm mới vào bảng hop_dong
với yêu cầu sp_them_moi_hop_dong
phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung
, với nguyên tắc không được trùng khóa chính
và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan.
*/

delimiter //
CREATE PROCEDURE sp_them_moi_hop_dong (out ps_ma_hop_dong int, 
ps_ngay_lam_hop_dong date, ps_ngay_ket_thuc date, 
ps_tien_dat_coc double, ps_ma_nhan_vien int, ps_ma_khach_hang int, ps_ma_dich_vu int,out result varchar(255) )
BEGIN
set ps_ma_hop_dong = (select max(hop_dong.ma_hop_dong) from hop_dong) +1;
if (ps_ma_khach_hang in( select khach_hang.ma_khach_hang from khach_hang))
and (ps_ma_dich_vu in (select dich_vu.ma_dich_vu from dich_vu))
and (ps_ma_nhan_vien in (select nhan_vien.ma_nhan_vien from nhan_vien))
then 
INSERT INTO `furama_managerment`.`hop_dong`
(`ma_hop_dong`,
`ngay_lam_hop_dong`,
`ngay_ket_thuc`,
`tien_dat_coc`,
`ma_nhan_vien`,
`ma_khach_hang`,
`ma_dich_vu`)
VALUES
(ps_ma_hop_dong,
ps_ngay_lam_hop_dong,
ps_ngay_ket_thuc,
ps_tien_dat_coc,
ps_ma_nhan_vien,
ps_ma_khach_hang,
ps_ma_dich_vu);
else 
set result = "Lỗi";
select  result;
end if;
end; 
// delimiter ;
call sp_them_moi_hop_dong(@ps_ma_hop_dong,'2020-12-24','2020-12-08',0,3,5,3,@sp_result);

/* 25.	Tạo Trigger có tên tr_xoa_hop_dong
 khi xóa bản ghi trong bảng hop_dong
 thì hiển thị tổng số lượng bản ghi còn lại có trong bảng hop_dong
 ra giao diện console của database.
Lưu ý: Đối với MySQL thì sử dụng SIGNAL
 hoặc ghi log thay cho việc ghi ở console.
 */
delimiter // 
CREATE TRIGGER tr_xoa_hop_dong after delete
 ON hop_dong
 FOR EACH ROW
 BEGIN
declare msg varchar(128);
declare ds int ;
set ds =(select count(ma_hop_dong) from(select * from  hop_dong) as hd);
set msg =(select concat("Đã xóa",ds));
    	SELECT msg AS LOG INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/log.txt';
 END
// delimiter ;

drop trigger tr_xoa_hop_dong;
delete from hop_dong where ma_hop_dong = 2;



/* 26.	Tạo Trigger có tên tr_cap_nhat_hop_dong
 khi cập nhật ngày kết thúc hợp đồng,
 cần kiểm tra xem thời gian cập nhật có phù hợp hay không,
 với quy tắc sau: 
 Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày.
 Nếu dữ liệu hợp lệ thì cho phép cập nhật,
 nếu dữ liệu không hợp lệ thì in ra thông báo 
 “Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày”
 trên console của database.
Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
   */
delimiter // 
CREATE TRIGGER tr_cap_nhat_hop_dong before update
 ON hop_dong
 FOR EACH ROW
 BEGIN
 declare u int;
 set u = (select datediff(new.ngay_ket_thuc,old.ngay_lam_hop_dong));
 if u < 2
 then 
   SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày';
   end if;
 END
// delimiter ;

update hop_dong set hop_dong.ngay_ket_thuc = '2021-01-15' where hop_dong.ma_hop_dong = 4;
drop trigger tr_cap_nhat_hop_dong;

