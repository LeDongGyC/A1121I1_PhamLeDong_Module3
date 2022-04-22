create database ss2_bt_cdERDsmhqh;
use ss2_bt_cdERDsmhqh;

-- tạo bảng Phiếu xuất
create table phieu_xuat(
	so_px int primary key auto_increment,
    ngay_xuat date
);
-- tạo bảng vật tư
create table vat_tu(
	ma_vtu int primary key auto_increment,
    ten_vtu varchar(50)
);
-- tạo bảng Phiếu nhập
create table phieu_nhap(
	so_pn int primary key auto_increment,
    ngay_nhap date
);
-- tạo bảng đơn đặt hàng
create table don_dh(
	so_dh int primary key auto_increment,
    ngay_dh date,
	ma_ncc int,
    foreign key(ma_ncc) references nha_cc(ma_ncc)
);
-- tạo bảng nhà cung cấp 
create table nha_cc(
	ma_ncc int primary key auto_increment,
    ten_ncc varchar(50),
    dia_chi varchar(50),
    ma_so_dth int,
    foreign key (ma_so_dth) references so_dth(ma_so_dth)
);
-- tạo bảng số điện thoại 
create table so_dth(
	ma_so_dth int primary key auto_increment,
    so_dth varchar(50)
);
-- 1.chi tiết phiếu xuất
create table chi_tiet_phieu_xuat(
	so_px int,
    ma_vtu int,
    primary key(so_px,ma_vtu),
    foreign key (so_px) references phieu_xuat(so_px),
    foreign key (ma_vtu) references vat_tu(ma_vtu),
    dg_xuat double,
    sl_xuat int
);
-- 2.chi tiết phiếu nhập 
create table chi_tiet_phieu_nhap(
	ma_vtu int,
    so_pn int,
    primary key(ma_vtu,so_pn),
    foreign key(ma_vtu) references vat_tu(ma_vtu),
    foreign key(so_pn) references phieu_nhap(so_pn),
    dg_nhap double,
    sl_nhap int
);
-- 3.chi tiết đơn đặt hàng
create table chi_tiet_don_dat_hang(
	ma_vtu int,
    so_dh int,
    foreign key(ma_vtu) references vat_tu(ma_vtu),
    foreign key(so_dh) references don_dh(so_dh)
);
drop table chi_tiet_phieu_nhap;
