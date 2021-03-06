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
        REFERENCES nhan_vien (ma_nhan_vien) on delete cascade,
    CONSTRAINT fk_ma_khach_hang FOREIGN KEY (ma_khach_hang) 
        REFERENCES khach_hang (ma_khach_hang) on delete cascade,
    CONSTRAINT fk_ma_dich_vu FOREIGN KEY (ma_dich_vu)
        REFERENCES dich_vu (ma_dich_vu) on delete cascade
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
        REFERENCES hop_dong (ma_hop_dong) ON DELETE CASCADE,
    CONSTRAINT fk_ma_dich_vu_di_kem FOREIGN KEY (ma_dich_vu_di_kem)
        REFERENCES dich_vu_di_kem (ma_dich_vu_di_kem) ON DELETE CASCADE
);


		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(1,
		"L??? t??n");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(2,
		"Ph???c v???");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(3,
		"Chuy??n vi??n");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(4,
		"Gi??m s??t");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(5,
		"Qu???n l??");
		INSERT INTO `furama_managerment`.`vi_tri`
		(`ma_vi_tri`,
		`ten_vi_tri`)
		VALUES
		(6,
		"Gi??m ?????c");
		-- L??? t??n, ph???c v???, chuy??n vi??n, gi??m s??t, qu???n l??, gi?? ?????c.


		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(1,
		"Trung c???p");
		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(2,
		"Cao ?????ng");
		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(3,
		"?????i h???c");
		INSERT INTO `furama_managerment`.`trinh_do`
		(`ma_trinh_do`,
		`ten_trinh_do`)
		VALUES
		(4,
		"Sau ?????i h???c");
		-- Trung c???p, Cao ?????ng, ?????i h???c v?? sau ?????i h???c


		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(1,
		"Sale ??? Marketing");
		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(2,
		"H??nh ch??nh");
		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(3,
		"Ph???c v???");
		INSERT INTO `furama_managerment`.`bo_phan`
		(`ma_bo_phan`,
		`ten_bo_phan`)
		VALUES
		(4,
		"Qu???n l??");

		-- Sale ??? Marketing, H??nh Ch??nh, Ph???c v???, Qu???n l??.

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
		(1,"Nguy???n V??n An","1970-11-07",456231786,10000000,0901234121,"annguyen@gmail.com","295 Nguy???n T???t Th??nh, ???? N???ng",1,3,1);

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
		(2,"L?? V??n B??nh","1997-04-09",654231234,7000000,0934212314,"binhlv@gmail.com","22 Y??n B??i, ???? N???ng",1,2,2);
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
		"H??? Th??? Y???n",
		"1990-05-06",
		241705957,
		5000000,
		0987654323,
		"thiyen94@gmail.com",
		"?????k L???k",
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
		(4,"V?? C??ng To???n","1980-04-04",123231365,17000000,0374443232,"toan0404@gmail.com","77 Ho??ng Di???u, Qu???ng Tr???",1,4,4);

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
		(5,"Nguy???n B???nh Ph??t","1999-12-09",454363232,6000000,0902341231,"phatphat@gmail.com","43 Y??n B??i, ???? N???ng",2,1,1);

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
		(6,"Kh??c Nguy???n An Nghi","2000-11-08",964542311,7000000,0978653213,"annghi20@gmail.com","294 Nguy???n T???t Th??nh, ???? N???ng",2,2,3);

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
		(7,"Nguy???n H???u H??","1993-01-01",534323231,8000000,0941234553,"nhh0101@gmail.com","4 Nguy???n Ch?? Thanh, Hu???",2,3,2);
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
		(8,"Nguy???n H?? ????ng","1989-09-03",234414123,9000000,0642123111,"donghanguyen@gmail.com","111 H??ng V????ng, H?? N???i",2,4,4);

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
		(9,"T??ng Hoang","1982-09-03",256781231,6000000,0245144444,"hoangtong@gmail.com","213 H??m Nghi, ???? N???ng",2,4,4);

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
		(10,"Nguy???n C??ng ?????o","1994-01-08",755434343,8000000,0988767111,"nguyencongdao12@gmail.com","6 Ho?? Kh??nh, ?????ng Nai",2,3,2);
		-- 		L??? t??n, 		ph???c v???, 	chuy??n vi??n, 	gi??m s??t, qu???n l??, gi?? ?????c.
		-- 			Trung c???p,	Cao ?????ng, 	?????i h???c v?? 		sau ?????i h???c
		-- Sale ??? Marketing, 	H??nh Ch??nh, Ph???c v???, 		Qu???n l??
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
		(1,5,"Nguy???n Th??? H??o","1970-11-07",0,643431213,0945423362,"thihao07@gmail.com","23 Nguy???n Ho??ng, ???? N???ng");


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
		(2,3,"Ph???m Xu??n Di???u","1992-08-08",1,865342123,0954333333,"xuandieu92@gmail.com","K77/22 Th??i Phi??n, Qu???ng Tr???");


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
		3,1,"Tr????ng ????nh Ngh???","1990-02-27",1,488645199,0373213122,"nghenhan2702@gmail.com","K323/12 ??ng ??ch Khi??m, Vinh"
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
		4,1,"D????ng V??n Quan","1981-07-08",1,543432111,0490039241,"duongquan@gmail.com","K453/12 L?? L???i, ???? N???ng"

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
		5,4,"Ho??ng Tr???n Nhi Nhi","1995-12-09",0,795453345,0312345678,"nhinhi123@gmail.com","224 L?? Th??i T???, Gia Lai"

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
		6,4,"T??n N??? M???c Ch??u","2005-12-06",0,732434215,0988888844,"tonnuchau@gmail.com","37 Y??n Th???, ???? N???ng"

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
		7,1,"Nguy???n M??? Kim","1984-04-08",0,856453123,0912345698,"kimcuong84@gmail.com","K123/45 L?? L???i, H??? Ch?? Minh"

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
		8,3,"Nguy???n Th??? H??o","1999-04-08",0,965656433,0763212345,"haohao99@gmail.com","55 Nguy???n V??n Linh, Kon Tum"

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

		9,1,"Tr???n ?????i Danh","1994-07-01",1,432341235,0643343433,"danhhai99@gmail.com","24 L?? Th?????ng Ki???t, Qu???ng Ng??i"

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

		10,2,"Nguy???n T??m ?????c","1989-07-01",1,344343432,0987654321,"dactam@gmail.com","22 Ng?? Quy???n, ???? N???ng"
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
		(1,"Villa Beach Front",25000,10000000,10,"vip","C?? h??? b??i",500,4,3,1);

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
		2,"House Princess 01",14000,5000000,7,"vip","C?? th??m b???p n?????ng",null,3,2,2);
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
		(3,"Room Twin 01",5000,1000000,2,"normal","C?? tivi",null,null,4,3);

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

		4,"Villa No Beach Front",22000,9000000,8,"normal","C?? h??? b??i",300,3,3,1);
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
		(5,"House Princess 02",10000,4000000,5,"normal","C?? th??m b???p n?????ng",null,2,3,2);

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
		(6,"Room Twin 02",3000,900000,2,"normal","C?? tivi",null,null,4,3);




		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(1,"Karaoke",10000,"gi???","ti???n nghi, hi???n ?????i"
		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(2,"Thu?? xe m??y",10000,"chi???c","h???ng 1 xe"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(3,"Thu?? xe ?????p",20000,"chi???c","t???t"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(4,"Buffet bu???i s??ng",15000,"su???t","?????y ????? ????? ??n, tr??ng mi???ng"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(5,"Buffet bu???i tr??a",90000,"su???t","?????y ????? ????? ??n, tr??ng mi???ng"

		);
		INSERT INTO `furama_managerment`.`dich_vu_di_kem`
		(`ma_dich_vu_di_kem`,
		`ten_dich_vu_di_kem`,
		`gia`,
		`don_vi`,
		`trang_thai`)
		VALUES
		(6,"Buffet bu???i t???i",16000,"su???t","?????y ????? ????? ??n, tr??ng mi???ng"
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



	/* 2.	Hi???n th??? th??ng tin c???a t???t c??? nh??n vi??n 
c?? trong h??? th???ng c?? t??n b???t ?????u 
l?? m???t trong c??c k?? t??? ???H???, ???T??? ho???c ???K??? v?? c?? t???i ??a 15 k?? t???.
*/

select * from nhan_vien where nhan_vien.ho_ten like '%H%' or '%T%' or '%K%' 
and length(nhan_vien.ho_ten) <= 15;
/*
3.	Hi???n th??? th??ng tin c???a t???t c??? kh??ch h??ng
 c?? ????? tu???i t??? 18 ?????n 50 tu???i
 v?? c?? ?????a ch??? ??? ??????? N???ng??? ho???c ???Qu???ng Tr??????.
*/
select * from khach_hang where year(curdate()) - year(ngay_sinh) >= 18 
and  year(curdate()) - year(ngay_sinh) <= 50 
and dia_chi like "%???? N???ng" or dia_chi like "%Qu???ng Tr???";

/*
4.	?????m xem t????ng ???ng v???i m???i kh??ch h??ng ???? t???ng ?????t ph??ng bao nhi??u l???n.
 K???t qu??? hi???n th??? ???????c s???p x???p t??ng d???n theo s??? l???n ?????t ph??ng c???a kh??ch h??ng.
 Ch??? ?????m nh???ng kh??ch h??ng n??o c?? T??n lo???i kh??ch h??ng l?? ???Diamond???.
*/
select ten_loai_khach,ho_ten,count(hop_dong.ma_khach_hang) as solandatphong from hop_dong
inner join khach_hang on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
 inner join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
 where ten_loai_khach like "%Diamond%" group by hop_dong.ma_khach_hang order by solandatphong desc  ;
/*
5.	Hi???n th???  (V???i t???ng ti???n ???????c t??nh theo c??ng th???c nh?? sau:
 Chi Ph?? Thu?? + S??? L?????ng * Gi??,
 v???i S??? L?????ng v?? Gi?? l?? t??? b???ng dich_vu_di_kem, hop_dong_chi_tiet)
 cho t???t c??? c??c kh??ch h??ng ???? t???ng ?????t ph??ng. 
 (nh???ng kh??ch h??ng n??o ch??a t???ng ?????t ph??ng c??ng ph???i hi???n th??? ra).
*/
select hop_dong.ma_khach_hang, khach_hang.ho_ten, loai_khach.ten_loai_khach, hop_dong.ma_hop_dong,
 dich_vu.ten_dich_vu, hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc, 
 sum(chi_phi_thue+(so_luong*gia)) as tong_tien from khach_hang
  left join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
 left join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
  left join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
  left join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
 left join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
  GROUP BY khach_hang.ma_khach_hang;


/*
6.	Hi???n th??? ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu
 c???a t???t c??? c??c lo???i d???ch v??? 
 ch??a t???ng ???????c kh??ch h??ng th???c hi???n ?????t t??? qu?? 1
 c???a n??m 2021 (Qu?? 1 l?? th??ng 1, 2, 3).
*/

select dich_vu.ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu
from dich_vu 
left join hop_dong on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
left join loai_dich_vu on loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_loai_dich_vu
where dich_vu.ma_dich_vu not in (select ma_dich_vu from hop_dong as hd where (YEAR(ngay_ket_thuc) = 2021
						AND MONTH(ngay_ket_thuc) >= 1
						AND MONTH(ngay_ket_thuc) <= 3)) 
 group by dich_vu.ma_dich_vu;
select * from hop_dong;
/*
7.	Hi???n th??? th??ng tin ma_dich_vu, ten_dich_vu, dien_tich,
 so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu
 c???a t???t c??? c??c lo???i d???ch v??? ???? t???ng
 ???????c kh??ch h??ng ?????t ph??ng trong n??m 2020
 nh??ng ch??a t???ng
 ???????c kh??ch h??ng ?????t ph??ng trong n??m 2021.
*/
select dich_vu.ma_dich_vu, ten_dich_vu, dien_tich,
 so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu
 from dich_vu 
 left join hop_dong on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
 left join loai_dich_vu on loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_loai_dich_vu
 where dich_vu.ma_dich_vu in (select ma_dich_vu from hop_dong where (year(ngay_lam_hop_dong)=2020)) 
 and dich_vu.ma_dich_vu not in (select ma_dich_vu from hop_dong where (year(ngay_lam_hop_dong)=2021))
group by dich_vu.ma_dich_vu;

/*
8.	Hi???n th??? th??ng tin ho_ten kh??ch h??ng c?? trong h??? th???ng,
 v???i y??u c???u ho_ten kh??ng tr??ng nhau.
H???c vi??n s??? d???ng theo 3 c??ch kh??c nhau ????? th???c hi???n y??u c???u tr??n.
*/
select distinct ho_ten from khach_hang ;

select khach_hang.ho_ten from hop_dong
right join khach_hang on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
group by ho_ten;

select khach_hang.ho_ten from khach_hang group by khach_hang.ho_ten;

/*
9.	Th???c hi???n th???ng k?? doanh thu theo th??ng
, ngh??a l?? t????ng ???ng v???i m???i th??ng trong n??m 2021
 th?? s??? c?? bao nhi??u kh??ch h??ng th???c hi???n ?????t ph??ng.
*/
select month(ngay_lam_hop_dong),
count(ngay_lam_hop_dong) from hop_dong 
where (year(ngay_lam_hop_dong)=2021)
GROUP BY month(ngay_lam_hop_dong)
		ORDER BY month(ngay_lam_hop_dong);
/*
10.	Hi???n th??? th??ng tin t????ng ???ng 
v???i t???ng h???p ?????ng th?? ???? s??? d???ng bao nhi??u d???ch v??? ??i k??m.
 K???t qu??? hi???n th??? bao g???m 
 ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, 
 tien_dat_coc, so_luong_dich_vu_di_kem
 (???????c t??nh d???a tr??n vi???c sum so_luong ??? dich_vu_di_kem).
*/ 
select hop_dong.ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, 
 tien_dat_coc, sum(hop_dong_chi_tiet.so_luong) as so_luong_dich_vu_di_kem
 from hop_dong
 left join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
 
group by ma_hop_dong;
/*
11.	Hi???n th??? th??ng tin c??c d???ch v??? ??i k??m
 ???? ???????c s??? d???ng b???i nh???ng kh??ch h??ng c?? ten_loai_khach l?? ???Diamond???
 v?? c?? dia_chi ??? ???Vinh??? ho???c ???Qu???ng Ng??i???.
*/
select dich_vu_di_kem.ma_dich_vu_di_kem,dich_vu_di_kem.ten_dich_vu_di_kem from hop_dong
inner join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
inner join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
inner join khach_hang on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
inner join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
where hop_dong.ma_khach_hang in
 (select khach_hang.ma_khach_hang from khach_hang where ma_loai_khach in
 (select ma_loai_khach from loai_khach where ten_loai_khach like "%Diamond%"))
 and hop_dong.ma_khach_hang in
 (select khach_hang.ma_khach_hang from khach_hang where dia_chi like "%Vinh%" or dia_chi like "%Qu???ng Ng??i%");

/*
12.	Hi???n th??? th??ng tin ma_hop_dong, ho_ten (nh??n vi??n),
 ho_ten (kh??ch h??ng), so_dien_thoai (kh??ch h??ng),
 ten_dich_vu, so_luong_dich_vu_di_kem (???????c t??nh d???a tr??n vi???c sum so_luong ??? dich_vu_di_kem)
 , tien_dat_coc c???a t???t c??? c??c d???ch v??? ???? t???ng
 ???????c kh??ch h??ng ?????t v??o 3 th??ng cu???i n??m 2020
 nh??ng ch??a t???ng ???????c kh??ch h??ng ?????t v??o
 6 th??ng ?????u n??m 2021.
*/
select hop_dong.ma_hop_dong, nhan_vien.ho_ten,
 khach_hang.ho_ten, khach_hang.so_dien_thoai,
 ten_dich_vu, sum(hop_dong_chi_tiet.so_luong) as so_luong_dich_vu_di_kem
 , tien_dat_coc from hop_dong
 left join nhan_vien on nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
 left join khach_hang on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
 left join dich_vu on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
 left join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
 where dich_vu.ma_dich_vu in (select hop_dong.ma_dich_vu from hop_dong where year(ngay_lam_hop_dong) = 2020 and month(ngay_lam_hop_dong) >9 and month(ngay_lam_hop_dong) <=12 ) 
 and dich_vu.ma_dich_vu not in (select hop_dong.ma_dich_vu from hop_dong where year(ngay_lam_hop_dong) = 2021 and month(ngay_lam_hop_dong) >=1 and month(ngay_lam_hop_dong) <=6 )
 group by ma_hop_dong;

/*
13.	Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m
 ???????c s??? d???ng nhi???u nh???t b???i c??c Kh??ch h??ng ???? ?????t ph??ng.
 (L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s??? d???ng nhi???u nh?? nhau).
*/
            -- ch???n ra sum so_luong
            
          SELECT  * FROM
    (SELECT 
        hop_dong_chi_tiet.ma_dich_vu_di_kem, ten_dich_vu_di_kem, SUM(hop_dong_chi_tiet.so_luong) AS tong_so_luong_1
    FROM hop_dong_chi_tiet
    left join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
    GROUP BY ma_dich_vu_di_kem) AS bang1
WHERE
    tong_so_luong_1 = (SELECT MAX(tong_so_luong_2) FROM
            (SELECT 
                SUM(hop_dong_chi_tiet.so_luong) AS tong_so_luong_2
            FROM
                hop_dong_chi_tiet
            GROUP BY ma_dich_vu_di_kem) AS bang2);
            

		-- Cau 14 
		/*	Hi???n th??? th??ng tin t???t c??? c??c D???ch v??? ??i k??m ch??? m???i ???????c s??? d???ng m???t l???n duy nh???t.
		 Th??ng tin hi???n th??? bao g???m ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
		 (???????c t??nh d???a tr??n vi???c count c??c ma_dich_vu_di_kem).*/
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



		-- - C??u 15 
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



		-- c??u 16
		DELETE FROM nhan_vien 
		WHERE ma_nhan_vien in
			(SELECT 
				nv.ma_nhan_vien
			FROM
				(select * from nhan_vien)  as nv
			WHERE
				nv.ma_nhan_vien NOT IN (SELECT 
					hop_dong.ma_nhan_vien 
				FROM
					hop_dong
				
				WHERE
					YEAR(hop_dong.ngay_lam_hop_dong) >= 2019
					AND YEAR(hop_dong.ngay_lam_hop_dong) <= 2021) );



		-- c??u 17
			UPDATE khach_hang 
		SET 
			ma_loai_khach = 2
		WHERE
			ma_khach_hang IN (SELECT 
					kh.ma_khach_hang
				FROM (select * from khach_hang ) as kh
						INNER JOIN
					(SELECT 
						ma_khach_hang, SUM(dich_vu.chi_phi_thue) AS tong_thanh_toan
					FROM
						hop_dong
					INNER JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
					WHERE
						YEAR(ngay_ket_thuc) = 2021
					GROUP BY ma_khach_hang) AS hello ON hello.ma_khach_hang = kh.ma_khach_hang
				WHERE
					 kh.ma_loai_khach = 1
						AND hello.tong_thanh_toan >= 10000000);
-- c??u 18: 
			DELETE FROM khach_hang 
		WHERE
			ma_khach_hang in (SELECT 
				ma_khach_hang
			FROM
				hop_dong
			WHERE
				YEAR(ngay_ket_thuc) < 2021);
			
-- c??u 19: 
/* 19.	C???p nh???t gi?? cho c??c l??n g???p ????i.
 d???ch v??? ??i k??m ???????c s??? d???ng tr??n 10 l???n trong n??m 2020 */
			UPDATE dich_vu_di_kem 
		SET 
			gia = gia * 2
		WHERE
			ma_dich_vu_di_kem IN (SELECT 
					hello.ma_dich_vu_di_kem
				FROM
					(select * from dich_vu_di_kem) as dich_vu_di_kem
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
			
			-- c??u 20: 
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

