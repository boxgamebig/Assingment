-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:19:52.837




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    TenNV varchar(255)    NOT NULL ,
    MaNV varchar(255)    NOT NULL ,
    gioitinh varchar(255)    NOT NULL ,
    email varchar(255)    NOT NULL ,
    mucluong varchar(255)    NOT NULL ,
    Maphong varchar(255)    NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (TenNV)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    Maphong varchar(255)    NOT NULL ,
    Tenphong varchar(255)    NOT NULL ,
    TNhanvien_TenNV varchar(255)    NOT NULL ,
    CONSTRAINT TPhongban_pk PRIMARY KEY (Maphong)
);





-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)


ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien FOREIGN KEY TPhongban_TNhanvien (TNhanvien_TenNV)
    REFERENCES TNhanvien (TenNV);



-- End of file.

