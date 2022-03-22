		-- CAU 1

		create database Furama_Managerment;
		use Furama_Managerment;

		CREATE TABLE vi_tri (
    ma_vi_tri INT PRIMARY KEY,
    ten_vi_tri VARCHAR(45)
);

		CREATE TABLE trinh_do (
    ma_trinh_do INT PRIMARY KEY,
    ten_trinh_do VARCHAR(45)
);
		CREATE TABLE bo_phan (
    ma_bo_phan INT PRIMARY KEY,
    ten_bo_phan VARCHAR(45)
);

		CREATE TABLE nhan_vien (
    ma_nhan_vien INT PRIMARY KEY,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    so_cmnd VARCHAR(45),
    luong DOUBLE,
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT,
    ma_trinh_do INT,
    ma_bo_phan INT,
    CONSTRAINT fk_ma_vi_tri FOREIGN KEY (ma_vi_tri)
        REFERENCES vi_tri (ma_vi_tri),
    CONSTRAINT fk_ma_trinh_do FOREIGN KEY (ma_trinh_do)
        REFERENCES trinh_do (ma_trinh_do),
    CONSTRAINT fk_ma_bo_phan FOREIGN KEY (ma_bo_phan)
        REFERENCES bo_phan (ma_bo_phan)
);
		CREATE TABLE loai_khach (
    ma_loai_khach INT PRIMARY KEY,
    ten_loai_khach VARCHAR(45)
);

		CREATE TABLE khach_hang (
    ma_khach_hang INT PRIMARY KEY,
    ma_loai_khach INT,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    gioi_tinh BIT(1),
    so_cmnd VARCHAR(45),
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    CONSTRAINT fk_ma_loai_khach FOREIGN KEY (ma_loai_khach)
        REFERENCES loai_khach (ma_loai_khach)
);
		CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45)
);
		CREATE TABLE kieu_thue (
    ma_kieu_thue INT PRIMARY KEY,
    ten_kieu_thue VARCHAR(45)
);
		CREATE TABLE dich_vu (
    ma_dich_vu INT PRIMARY KEY,
    ten_dich_vu VARCHAR(45),
    dien_tich INT,
    chi_phi_thue DOUBLE,
    so_nguoi_toi_da INT,
    ma_kieu_thue INT,
    ma_loai_dich_vu INT,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    CONSTRAINT fk_ma_kieu_thue FOREIGN KEY (ma_kieu_thue)
        REFERENCES kieu_thue (ma_kieu_thue),
    CONSTRAINT fk_ma_loai_dich_vu FOREIGN KEY (ma_loai_dich_vu)
        REFERENCES loai_dich_vu (ma_loai_dich_vu)
);
		CREATE TABLE hop_dong (
    ma_hop_dong INT PRIMARY KEY,
    ngay_lam_hop_dong DATETIME,
    ngay_ket_thuc DATETIME,
    tien_dat_coc DOUBLE,
    ma_nhan_vien INT,
    ma_khach_hang INT,
    ma_dich_vu INT,
    CONSTRAINT fk_ma_nhan_vien FOREIGN KEY (ma_nhan_vien)
        REFERENCES nhan_vien (ma_nhan_vien),
    CONSTRAINT fk_ma_khach_hang FOREIGN KEY (ma_khach_hang)
        REFERENCES khach_hang (ma_khach_hang),
    CONSTRAINT fk_ma_dich_vu FOREIGN KEY (ma_dich_vu)
        REFERENCES dich_vu (ma_dich_vu)
);
		CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45),
    gia DOUBLE,
    don_vi VARCHAR(10),
    trang_thai VARCHAR(45)
);
		CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT PRIMARY KEY,
    ma_hop_dong INT,
    ma_dich_vu_di_kem INT,
    so_luong INT,
    CONSTRAINT fk_ma_hop_dong FOREIGN KEY (ma_hop_dong)
        REFERENCES hop_dong (ma_hop_dong),
    CONSTRAINT fk_ma_dich_vu_di_kem FOREIGN KEY (ma_dich_vu_di_kem)
        REFERENCES dich_vu_di_kem (ma_dich_vu_di_kem)
);


		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(1,
		"Lễ tân");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(2,
		"Phục vụ");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(3,
		"Chuyên viên");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(4,
		"Giám sát");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(5,
		"Quản lý");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(6,
		"Giám đốc");
		-- Lễ tân, phục vụ, chuyên viên, giám sát, quản lý, giá đốc.


		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(1,
		"Trung cấp");
		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(2,
		"Cao đẳng");
		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(3,
		"Đại học");
		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(4,
		"Sau đại học");
		-- Trung cấp, Cao đẳng, Đại học và sau đại học


		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(1,
		"Sale – Marketing");
		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(2,
		"Hành chính");
		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(3,
		"Phục vụ");
		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(4,
		"Quản lý");

		-- Sale – Marketing, Hành Chính, Phục vụ, Quản lý.

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(1,"Nguyễn Văn An","1970-11-07",456231786,10000000,0901234121,"annguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1);

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(2,"Lê Văn Bình","1997-04-09",654231234,7000000,0934212314,"binhlv@gmail.com","22 Yên Bái, Đà Nẵng",1,2,2);
		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(3,
		"Hồ Thị Yến",
		"1990-05-06",
		241705957,
		5000000,
		0987654323,
		"thiyen94@gmail.com",
		"Đắk Lắk",
		2,
		1,
		3);

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(4,"Võ Công Toản","1980-04-04",123231365,17000000,0374443232,"toan0404@gmail.com","77 Hoàng Diệu, Quảng Trị",1,4,4);

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(5,"Nguyễn Bỉnh Phát","1999-12-09",454363232,6000000,0902341231,"phatphat@gmail.com","43 Yên Bái, Đà Nẵng",2,1,1);

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(6,"Khúc Nguyễn An Nghi","2000-11-08",964542311,7000000,0978653213,"annghi20@gmail.com","294 Nguyễn Tất Thành, Đà Nẵng",2,2,3);

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(7,"Nguyễn Hữu Hà","1993-01-01",534323231,8000000,0941234553,"nhh0101@gmail.com","4 Nguyễn Chí Thanh, Huế",2,3,2);
		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(8,"Nguyễn Hà Đông","1989-09-03",234414123,9000000,0642123111,"donghanguyen@gmail.com","111 Hùng Vương, Hà Nội",2,4,4);

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(9,"Tòng Hoang","1982-09-03",256781231,6000000,0245144444,"hoangtong@gmail.com","213 Hàm Nghi, Đà Nẵng",2,4,4);

		INSERT INTO `furama_managerment`.`nhan_vien`
		(`ma_nhan_vien`,
		`ho_ten`,
		`ngay_sinh`,
		`so_cmnd`,
		`luong`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`,
		`ma_vi_tri`,
		`ma_trinh_do`,
		`ma_bo_phan`)
		VALUES
		(10,"Nguyễn Công Đạo","1994-01-08",755434343,8000000,0988767111,"nguyencongdao12@gmail.com","6 Hoà Khánh, Đồng Nai",2,3,2);
		-- 		Lễ tân, 		phục vụ, 	chuyên viên, 	giám sát, quản lý, giá đốc.
		-- 			Trung cấp,	Cao đẳng, 	Đại học và 		sau đại học
		-- Sale – Marketing, 	Hành Chính, Phục vụ, 		Quản lý
		-- `ma_vi_tri`,`ma_trinh_do`,`ma_bo_phan`





		INSERT INTO `furama_managerment`.`loai_khach`
		(`ma_loai_khach`,
		`ten_loai_khach`)
		VALUES
		(1,
		"Diamond");
		INSERT INTO `furama_managerment`.`loai_khach`
		(`ma_loai_khach`,
		`ten_loai_khach`)
		VALUES
		(2,
		"Platinium");
		INSERT INTO `furama_managerment`.`loai_khach`
		(`ma_loai_khach`,
		`ten_loai_khach`)
		VALUES
		(3,
		"Gold");
		INSERT INTO `furama_managerment`.`loai_khach`
		(`ma_loai_khach`,
		`ten_loai_khach`)
		VALUES
		(4,
		"Silver");
		INSERT INTO `furama_managerment`.`loai_khach`
		(`ma_loai_khach`,
		`ten_loai_khach`)
		VALUES
		(5,
		"Member");
		-- Diamond, Platinium, Gold, Silver, Member




		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(1,5,"Nguyễn Thị Hào","1970-11-07",0,643431213,0945423362,"thihao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng");


		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(2,3,"Phạm Xuân Diệu","1992-08-08",1,865342123,0954333333,"xuandieu92@gmail.com","K77/22 Thái Phiên, Quảng Trị");


		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(
		3,1,"Trương Đình Nghệ","1990-02-27",1,488645199,0373213122,"nghenhan2702@gmail.com","K323/12 Ông Ích Khiêm, Vinh"
		);

		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(
		4,1,"Dương Văn Quan","1981-07-08",1,543432111,0490039241,"duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng"

		);


		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(
		5,4,"Hoàng Trần Nhi Nhi","1995-12-09",0,795453345,0312345678,"nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai"

		);


		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(
		6,4,"Tôn Nữ Mộc Châu","2005-12-06",0,732434215,0988888844,"tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng"

		);


		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(
		7,1,"Nguyễn Mỹ Kim","1984-04-08",0,856453123,0912345698,"kimcuong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh"

		);

		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(
		8,3,"Nguyễn Thị Hào","1999-04-08",0,965656433,0763212345,"haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum"

		);
		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(

		9,1,"Trần Đại Danh","1994-07-01",1,432341235,0643343433,"danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi"

		);

		INSERT INTO `furama_managerment`.`khach_hang`
		(`ma_khach_hang`,
		`ma_loai_khach`,
		`ho_ten`,
		`ngay_sinh`,
		`gioi_tinh`,
		`so_cmnd`,
		`so_dien_thoai`,
		`email`,
		`dia_chi`)
		VALUES
		(

		10,2,"Nguyễn Tâm Đắc","1989-07-01",1,344343432,0987654321,"dactam@gmail.com","22 Ngô Quyền, Đà Nẵng"
		);
		insert into loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu) 
		 value (1,"Villa");
		insert into loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu)
		value (2,"House");
		insert into loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu) 
		value (3,"Room"); 

		INSERT INTO `furama_managerment`.`kieu_thue`
		(`ma_kieu_thue`,
		`ten_kieu_thue`)
		VALUES
		(1,"year");
		INSERT INTO `furama_managerment`.`kieu_thue`
		(`ma_kieu_thue`,
		`ten_kieu_thue`)
		VALUES
		(2,"month");
		INSERT INTO `furama_managerment`.`kieu_thue`
		(`ma_kieu_thue`,
		`ten_kieu_thue`)
		VALUES
		(3,"day");
		INSERT INTO `furama_managerment`.`kieu_thue`
		(`ma_kieu_thue`,
		`ten_kieu_thue`)
		VALUES
		(4,"hour");


		INSERT INTO `furama_managerment`.`dich_vu`
		(`ma_dich_vu`,
		`ten_dich_vu`,
		`dien_tich`,
		`chi_phi_thue`,
		`so_nguoi_toi_da`,
		`tieu_chuan_phong`,
		`mo_ta_tien_nghi_khac`,
		`dien_tich_ho_boi`,
		`so_tang`,
		`ma_kieu_thue`,
		`ma_loai_dich_vu`)
		VALUES
		(1,"Villa Beach Front",25000,10000000,10,"vip","Có hồ bơi",500,4,3,1);

		INSERT INTO `furama_managerment`.`dich_vu`
		(`ma_dich_vu`,
		`ten_dich_vu`,
		`dien_tich`,
		`chi_phi_thue`,
		`so_nguoi_toi_da`,
		`tieu_chuan_phong`,
		`mo_ta_tien_nghi_khac`,
		`dien_tich_ho_boi`,
		`so_tang`,
		`ma_kieu_thue`,
		`ma_loai_dich_vu`)
		VALUES
		(
		2,"House Princess 01",14000,5000000,7,"vip","Có thêm bếp nướng",null,3,2,2);
		INSERT INTO `furama_managerment`.`dich_vu`
		(`ma_dich_vu`,
		`ten_dich_vu`,
		`dien_tich`,
		`chi_phi_thue`,
		`so_nguoi_toi_da`,
		`tieu_chuan_phong`,
		`mo_ta_tien_nghi_khac`,
		`dien_tich_ho_boi`,
		`so_tang`,
		`ma_kieu_thue`,
		`ma_loai_dich_vu`)
		VALUES
		(3,"Room Twin 01",5000,1000000,2,"normal","Có tivi",null,null,4,3);

		INSERT INTO `furama_managerment`.`dich_vu`
		(`ma_dich_vu`,
		`ten_dich_vu`,
		`dien_tich`,
		`chi_phi_thue`,
		`so_nguoi_toi_da`,
		`tieu_chuan_phong`,
		`mo_ta_tien_nghi_khac`,
		`dien_tich_ho_boi`,
		`so_tang`,
		`ma_kieu_thue`,
		`ma_loai_dich_vu`)
		VALUES
		(

		4,"Villa No Beach Front",22000,9000000,8,"normal","Có hồ bơi",300,3,3,1);
		INSERT INTO `furama_managerment`.`dich_vu`
		(`ma_dich_vu`,
		`ten_dich_vu`,
		`dien_tich`,
		`chi_phi_thue`,
		`so_nguoi_toi_da`,
		`tieu_chuan_phong`,
		`mo_ta_tien_nghi_khac`,
		`dien_tich_ho_boi`,
		`so_tang`,
		`ma_kieu_thue`,
		`ma_loai_dich_vu`)
		VALUES
		(5,"House Princess 02",10000,4000000,5,"normal","Có thêm bếp nướng",null,2,3,2);

		INSERT INTO `furama_managerment`.`dich_vu`
		(`ma_dich_vu`,
		`ten_dich_vu`,
		`dien_tich`,
		`chi_phi_thue`,
		`so_nguoi_toi_da`,
		`tieu_chuan_phong`,
		`mo_ta_tien_nghi_khac`,
		`dien_tich_ho_boi`,
		`so_tang`,
		`ma_kieu_thue`,
		`ma_loai_dich_vu`)
		VALUES
		(6,"Room Twin 02",3000,900000,2,"normal","Có tivi",null,null,4,3);




		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(1,"Karaoke",10000,"giờ","tiện nghi, hiện đại"
		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(2,"Thuê xe máy",10000,"chiếc","hỏng 1 xe"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(3,"Thuê xe đạp",20000,"chiếc","tốt"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(4,"Buffet buổi sáng",15000,"suất","đầy đủ đồ ăn, tráng miệng"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(5,"Buffet buổi trưa",90000,"suất","đầy đủ đồ ăn, tráng miệng"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(6,"Buffet buổi tối",16000,"suất","đầy đủ đồ ăn, tráng miệng"
		);





		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(1,"2020-12-08","2020-12-08",0,3,1,3);

		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(2,"2020-07-14","2020-07-21",200000,7,3,1);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		3,"2021-03-15","2021-03-17",50000,3,4,2);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		4,"2021-01-14","2021-01-18",100000,7,5,5);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		5,"2021-07-14","2021-07-15",0,7,2,6);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		6,"2021-06-01","2021-06-03",0,7,7,6);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		7,"2021-09-02","2021-09-05",100000,7,4,4);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		8,"2021-06-17","2021-06-18",150000,3,4,1);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		9,"2020-11-19","2020-11-19",0,3,4,3);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		10,"2021-04-12","2021-04-14",0,10,3,5);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(
		11,"2021-04-25","2021-04-25",0,2,2,1
		);
		INSERT INTO `furama_managerment`.`hop_dong`
		(`ma_hop_dong`,
		`ngay_lam_hop_dong`,
		`ngay_ket_thuc`,
		`tien_dat_coc`,
		`ma_nhan_vien`,
		`ma_khach_hang`,
		`ma_dich_vu`)
		VALUES
		(

		12,"2021-05-25","2021-05-27",0,7,10,1);




		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(1,5,2,4);
		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(2,8,2,5);
		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(3,15,2,6

		);
		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(4,1,3,1
		);
		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(5,11,3,2
		);
		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(6,1,1,3
		);
		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(7,2,1,2
		);
		INSERT INTO `furama_managerment`.`hop_dong_chi_tiet`
		(`ma_hop_dong_chi_tiet`,
		`so_luong`,
		`ma_hop_dong`,
		`ma_dich_vu_di_kem`)
		VALUES
		(8,2,12,2);



		-- CAU 2 ----------------------------------------------------------------------------------
		SELECT * FROM nhan_vien where ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%' and length(ho_ten) <15 ;
		-- CAU 3 ----------- 3	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”
		SELECT 
			*
		FROM
			khach_hang
		WHERE
			ngay_sinh BETWEEN STR_TO_DATE('1972-01-01', '%Y-%m-%d') AND STR_TO_DATE('2002-12-31', '%Y-%m-%d')
				AND dia_chi LIKE '%Quảng Trị%'
				OR ngay_sinh BETWEEN STR_TO_DATE('1972-01-01', '%Y-%m-%d') AND STR_TO_DATE('2002-12-31', '%Y-%m-%d')
				AND dia_chi LIKE '%Đà Nẵng%';

		-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
		-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
		-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

		SELECT 
			`hop_dong`.`ma_khach_hang`,
			`khach_hang`.`ho_ten`,
			COUNT(hop_dong.ma_khach_hang) AS số_lần_đặt_phòng
		FROM
			furama_managerment.hop_dong,
			furama_managerment.khach_hang
				LEFT JOIN
			loai_khach ON khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
		WHERE
			hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
				AND loai_khach.ten_loai_khach = 'Diamond'
		GROUP BY hop_dong.ma_khach_hang
		ORDER BY số_lần_đặt_phòng ASC
		;


		-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach,
		 -- ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
		 -- (Với tổng tiền được tính theo công thức như sau:
		  -- Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem,
		 --  hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. 
		 --  (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
		SELECT 
			khach_hang.ma_khach_hang,
			khach_hang.ho_ten,
			loai_khach.ten_loai_khach,
			hop_dong.ma_hop_dong,
			dich_vu.ten_dich_vu,
			hop_dong.ngay_lam_hop_dong,
			hop_dong.ngay_ket_thuc,
			SUM(dich_vu.chi_phi_thue + (hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia)) AS tong_tien
		FROM
			khach_hang
				LEFT JOIN
			loai_khach ON khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
				LEFT JOIN
			hop_dong ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
				LEFT JOIN
			dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
				LEFT JOIN
			hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
				LEFT JOIN
			dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
		GROUP BY khach_hang.ma_khach_hang;


		-- 6.	Hiển thị  của 
		-- tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt
		 -- từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
		 
		 SELECT 
			dich_vu.ma_dich_vu,
			dich_vu.ten_dich_vu,
			dich_vu.dien_tich,
			dich_vu.chi_phi_thue,
			loai_dich_vu.ten_loai_dich_vu
		FROM
			dich_vu
				INNER JOIN
			loai_dich_vu ON loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_loai_dich_vu
				INNER JOIN
			hop_dong ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
		WHERE
			dich_vu.ma_dich_vu NOT IN (SELECT 
					ma_dich_vu
				FROM
					hop_dong
				WHERE
					(YEAR(ngay_ket_thuc) = 2021
						AND (MONTH(ngay_ket_thuc) >= 1
						AND MONTH(ngay_ket_thuc) <= 3)))
		GROUP BY dich_vu.ma_dich_vu;

		-- CÂU 7

		SELECT 
			dich_vu.ma_dich_vu,
			dich_vu.ten_dich_vu,
			dich_vu.dien_tich,
			dich_vu.so_nguoi_toi_da,
			dich_vu.chi_phi_thue,
			loai_dich_vu.ten_loai_dich_vu
		FROM
			dich_vu
				JOIN
			loai_dich_vu ON loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_loai_dich_vu
				JOIN
			hop_dong ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
		WHERE
			dich_vu.ma_dich_vu IN (SELECT 
					ma_dich_vu
				FROM
					hop_dong
				WHERE
					YEAR(ngay_ket_thuc) = 2020
						AND MONTH(ngay_ket_thuc) <= 12
						AND MONTH(ngay_ket_thuc) >= 1)
				AND dich_vu.ma_dich_vu NOT IN (SELECT 
					ma_dich_vu
				FROM
					hop_dong
				WHERE
					YEAR(ngay_ket_thuc) = 2021
						AND MONTH(ngay_ket_thuc) <= 12
						AND MONTH(ngay_ket_thuc) >= 1)
		GROUP BY dich_vu.ma_dich_vu;

		-- Câu 8

		select khach_hang.ho_ten from khach_hang group by khach_hang.ho_ten;
		SELECT DISTINCT
			ho_ten
		FROM
			khach_hang;
		select ho_ten from khach_hang  having count(ho_ten);

		-- câu 9

		 SELECT 
			MONTH(ngay_lam_hop_dong) AS thang,
			COUNT(MONTH(ngay_lam_hop_dong)) AS so_luong_khach_hang
		FROM
			hop_dong
		WHERE
			YEAR(ngay_lam_hop_dong) = 2021
		GROUP BY MONTH(ngay_lam_hop_dong)
		ORDER BY MONTH(ngay_lam_hop_dong);
					
		-- Cau 10
		SELECT 
			hop_dong.ma_hop_dong,
			hop_dong.ngay_lam_hop_dong,
			hop_dong.ngay_ket_thuc,
			hop_dong.tien_dat_coc,
			SUM(hop_dong_chi_tiet.so_luong) AS so_luong_dich_vu_di_kem
		FROM
			hop_dong
				LEFT JOIN
			hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
		GROUP BY hop_dong.ma_hop_dong;

		-- Câu 11

		SELECT 
			*
		FROM
			dich_vu_di_kem
				INNER JOIN
			hop_dong_chi_tiet ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
				INNER JOIN
			hop_dong ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
				INNER JOIN
			khach_hang ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
				INNER JOIN
			loai_khach ON loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
		WHERE
			loai_khach.ten_loai_khach = 'Diamond'
				AND khach_hang.dia_chi LIKE '%Vinh%'
				OR loai_khach.ten_loai_khach = 'Diamond'
				AND khach_hang.dia_chi LIKE '%Quảng Ngãi%';


		-- Câu 12
		SELECT 
			hop_dong.ma_hop_dong,
			nhan_vien.ho_ten AS tên_nhân_viên,
			khach_hang.ho_ten AS tên_khách_hàng,
			khach_hang.so_dien_thoai AS sdt_khách_hàng,
			dich_vu.ten_dich_vu,
			SUM(hop_dong_chi_tiet.so_luong) AS so_luong_dich_vu_di_kem,
			hop_dong.tien_dat_coc
		FROM
			hop_dong
				INNER JOIN
			nhan_vien ON nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
				INNER JOIN
			khach_hang ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
				INNER JOIN
			dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
				LEFT JOIN
			hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
		WHERE
			(YEAR(ngay_lam_hop_dong) = 2020
				AND MONTH(ngay_lam_hop_dong) > 9
				AND MONTH(ngay_lam_hop_dong) <= 12)
				AND hop_dong.ma_hop_dong NOT IN (SELECT 
					ma_hop_dong
				FROM
					hop_dong
				WHERE
					(YEAR(ngay_lam_hop_dong) = 2021
						AND MONTH(ngay_lam_hop_dong) >= 1
						AND MONTH(ngay_lam_hop_dong) <= 6))
		GROUP BY hop_dong.ma_hop_dong;



		-- Câu 13
		SELECT 
			dich_vu_di_kem.ma_dich_vu_di_kem,
			ten_dich_vu_di_kem,
			so_luong_dich_vu_di_kem
		FROM
			(SELECT 
				ma_dich_vu_di_kem,
					SUM(hop_dong_chi_tiet.so_luong) AS so_luong_dich_vu_di_kem
			FROM
				hop_dong
			INNER JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
			GROUP BY ma_dich_vu_di_kem) AS max1
				INNER JOIN
			(SELECT 
				MAX(max2.so_luong_dich_vu_di_kem) AS max
			FROM
				(SELECT 
				ma_dich_vu_di_kem,
					SUM(hop_dong_chi_tiet.so_luong) AS so_luong_dich_vu_di_kem
			FROM
				hop_dong
			INNER JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
			GROUP BY ma_dich_vu_di_kem) AS max2) AS max3 ON max3.max = max1.so_luong_dich_vu_di_kem
				INNER JOIN
			dich_vu_di_kem ON max1.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem;

		-- Cau 14 
		/*	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất.
		 Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
		 (được tính dựa trên việc count các ma_dich_vu_di_kem).*/
		SELECT 
			*
		FROM
			(SELECT 
				hop_dong.ma_hop_dong,
					loai_dich_vu.ten_loai_dich_vu,
					dich_vu_di_kem.ten_dich_vu_di_kem,
					COUNT(dich_vu_di_kem.ma_dich_vu_di_kem) AS so_lan_su_dung
			FROM
				hop_dong
			INNER JOIN dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
			INNER JOIN loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
			INNER JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
			INNER JOIN dich_vu_di_kem ON hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
			GROUP BY dich_vu_di_kem.ma_dich_vu_di_kem) AS dem_so_lan
		WHERE
			so_lan_su_dung = 1
		ORDER BY ma_hop_dong;



		-- - Câu 15 
		SELECT 
			nhan_vien.ma_nhan_vien,
			nhan_vien.ho_ten,
			trinh_do.ten_trinh_do,
			bo_phan.ten_bo_phan,
			so_dien_thoai,
			dia_chi
		FROM
			nhan_vien
				INNER JOIN
			(SELECT 
				ma_nhan_vien, COUNT(ma_nhan_vien) AS so_hop_dong
			FROM
				hop_dong
			WHERE
				YEAR(ngay_lam_hop_dong) >= 2020
					AND YEAR(ngay_lam_hop_dong) <= 2021
			GROUP BY ma_nhan_vien) AS so_hop_dong ON so_hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
				INNER JOIN
			trinh_do ON trinh_do.ma_trinh_do = nhan_vien.ma_trinh_do
				INNER JOIN
			bo_phan ON bo_phan.ma_bo_phan = nhan_vien.ma_bo_phan
		WHERE
			so_hop_dong.so_hop_dong <= 3;



		-- câu 16
		DELETE FROM nhan_vien 
		WHERE
			(SELECT 
				ma_nhan_vien
			FROM
				nhan_vien
			
			WHERE
				ma_nhan_vien NOT IN (SELECT 
					ma_nhan_vien
				FROM
					hop_dong
				
				WHERE
					YEAR(ngay_lam_hop_dong) >= 2019
					AND YEAR(ngay_lam_hop_dong) <= 2021));



		-- câu 17
			UPDATE khach_hang 
		SET 
			ma_loai_khach = 1
		WHERE
			ma_khach_hang IN (SELECT 
					khach_hang.ma_khach_hang
				FROM
					khach_hang
						INNER JOIN
					(SELECT 
						ma_khach_hang, SUM(dich_vu.chi_phi_thue) AS tong_thanh_toan
					FROM
						hop_dong
					INNER JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
					WHERE
						YEAR(ngay_ket_thuc) = 2021
					GROUP BY ma_khach_hang) AS hello ON hello.ma_khach_hang = khach_hang.ma_khach_hang
				WHERE
					khach_hang.ma_loai_khach = 2
						AND hello.tong_thanh_toan >= 10000000);
-- câu 18: 
			DELETE FROM khach_hang 
		WHERE
			ma_khach_hang = (SELECT 
				ma_khach_hang
			FROM
				hop_dong
			
			WHERE
				YEAR(ngay_ket_thuc) < 2021);
			
-- câu 19: 
			UPDATE dich_vu_di_kem 
		SET 
			gia = gia * 2
		WHERE
			ma_dich_vu_di_kem IN (SELECT 
					hello.ma_dich_vu_di_kem
				FROM
					dich_vu_di_kem
						INNER JOIN
					(SELECT 
						hop_dong_chi_tiet.ma_dich_vu_di_kem,
							SUM(hop_dong_chi_tiet.so_luong) AS so_lan
					FROM
						hop_dong
					INNER JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
					WHERE
						YEAR(hop_dong.ngay_ket_thuc) = 2020
					GROUP BY hop_dong_chi_tiet.ma_hop_dong_chi_tiet) AS hello ON dich_vu_di_kem.ma_dich_vu_di_kem = hello.ma_dich_vu_di_kem
				WHERE
					hello.so_lan >= 10);
			
			-- câu 20: 
			SELECT 
			ma_nhan_vien AS id,
			ho_ten,
			email,
			so_dien_thoai,
			ngay_sinh,
			dia_chi
		FROM
			nhan_vien 
		UNION ALL SELECT 
			ma_khach_hang,
			ho_ten,
			email,
			so_dien_thoai,
			ngay_sinh,
			dia_chi
		FROM
			khach_hang

