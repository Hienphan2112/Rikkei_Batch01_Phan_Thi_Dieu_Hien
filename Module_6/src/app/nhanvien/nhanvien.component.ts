import { Component, OnInit } from '@angular/core';
import {nhanvien} from '../nhanvien';



@Component({
  selector: 'app-nhanvien',
  templateUrl: './nhanvien.component.html',
  styleUrls: ['./nhanvien.component.css']
})
export class NhanvienComponent implements OnInit {
  Nhanvien: nhanvien[] = [
    {
      MaNhanVien: 1, HoTenNhanVien: 'Hai Long', NgaySinh: '11/11/1999', ViTri: 'Quan ly',
      SoDienThoai: '0123456789', Email: 'hai@gmail.com', DiaChi: 'Quang Nam'
    },
    {
      MaNhanVien: 2, HoTenNhanVien: 'Dieu Hien', NgaySinh: '21/12/1999', ViTri: 'employee',
      SoDienThoai: '0123456789', Email: 'hien@gmail.com', DiaChi: 'Quang Nam'
    },
    {
      MaNhanVien: 3, HoTenNhanVien: 'Tuan Manh', NgaySinh: '11/11/1999', ViTri: 'manager',
      SoDienThoai: '0123456789', Email: 'hai@gmail.com', DiaChi: 'Quang Nam'
    },
    {
      MaNhanVien: 4, HoTenNhanVien: 'Van Thuan', NgaySinh: '11/11/1999', ViTri: 'dev',
      SoDienThoai: '0123456789', Email: 'hai@gmail.com', DiaChi: 'Quang Nam'
    },
    {
      MaNhanVien: 5, HoTenNhanVien: 'Van Hong', NgaySinh: '11/11/1999', ViTri: 'pm',
      SoDienThoai: '0123456789', Email: 'hai@gmail.com', DiaChi: 'Quang Nam'
    },
  ];
  constructor() { }

  ngOnInit(): void {
  }

}
