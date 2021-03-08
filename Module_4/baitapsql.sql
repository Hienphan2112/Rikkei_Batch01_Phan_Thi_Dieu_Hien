use QUANLYSACHNHANAM;
#2
SELECT * from sanphamdochoi h
WHERE h.SoLuong > 20 and h.DonGia < 1000000;

SELECT * from sanphamdungcu h
WHERE h.SoLuong > 20 and h.DonGia < 1000000;

SELECT * from sanphamsach h
WHERE h.SoLuong > 20 and h.DonGia < 1000000;

#3
SELECT * FROM khachhang as h
WHERE ROUND(DATEDIFF(now() , h.NgaySinh)/365) BETWEEN 16 and 30
  AND ROUND(DATEDIFF(now() , h.NgaySinh)/365) = 40;

#4  
SELECT * FROM donhang 
WHERE YEAR(NgayMuaHang) = 2020;

#5
SELECT * FROM donhang, khachhang
where quarter(Ngaymuahang) = 4;

#6
SElect * from khachhang
where length(tenkhachhang) >14 AND (tenkhachhang like 'h%');

#7
select * from sanphamsach, donhang
WHERE YEAR(ngaymuahang) = 2020;

#8
select distinct tenkhachhang from khachhang;










