package rtep_hien.demo.entity;

import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.Date;
@Component
@Entity
@Table(name = "khachhang")
public class khachhang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaKhachHang")
    private String MaKhachHang;

    @Column(name = "TenKhachHang")
    private String TenKhachHang;
    @Column(name = "NgaySinh")
    private Date NgaySinh;
    @Column(name = "SoDienThoai")
    private String SoDienThoai;
    @Column(name = "Email")
    private String Email;
    @Column(name = "MaLoai")
    private String MaLoai;
    public khachhang(){
    }
    public khachhang(String maKhachHang, String tenKhachHang, Date ngaySinh, String soDienThoai, String email, String maLoai) {
        MaKhachHang = maKhachHang;
        TenKhachHang = tenKhachHang;
        NgaySinh = ngaySinh;
        SoDienThoai = soDienThoai;
        Email = email;
        MaLoai = maLoai;
    }

    public String getMaKhachHang() {
        return MaKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        MaKhachHang = maKhachHang;
    }

    public String getTenKhachHang() {
        return TenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        TenKhachHang = tenKhachHang;
    }

    public Date getNgaySinh() {
        return NgaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        NgaySinh = ngaySinh;
    }

    public String getSoDienThoai() {
        return SoDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        SoDienThoai = soDienThoai;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getMaLoai() {
        return MaLoai;
    }

    public void setMaLoai(String maLoai) {
        MaLoai = maLoai;
    }
}
