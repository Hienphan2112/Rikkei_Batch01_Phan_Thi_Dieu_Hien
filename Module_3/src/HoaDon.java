import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class HoaDon {
    public String maHoaDon, maKhachHang, maSanPham;
    public int soLuong;
    public Date ngayMua;
    public float donGia, tongTien;

    public HoaDon(String maHoaDon, String maKhachHang, String maSanPham, int soLuong, Date ngayMua, float donGia, float tongTien) {
        this.maHoaDon = maHoaDon;
        this.maKhachHang = maKhachHang;
        this.maSanPham = maSanPham;
        this.soLuong = soLuong;
        this.ngayMua = ngayMua;
        this.donGia = donGia;
        this.tongTien = tongTien;
    }

    public HoaDon() {

    }

    public String getMaHoaDon() {
        return maHoaDon;
    }

    public void setMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getMaSanPham() {
        return maSanPham;
    }

    public void setMaSanPham(String maSanPham) {
        this.maSanPham = maSanPham;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public Date getNgayMua() {
        return ngayMua;
    }

    public void setNgayMua(Date ngayMua) {
        this.ngayMua = ngayMua;
    }

    public float getDonGia() {
        return donGia;
    }

    public void setDonGia(float donGia) {
        this.donGia = donGia;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    @Override
    public String toString() {
        return "HoaDon{" +
                "maHoaDon='" + maHoaDon + '\'' +
                ", maKhachHang='" + maKhachHang + '\'' +
                ", maSanPham='" + maSanPham + '\'' +
                ", soLuong=" + soLuong +
                ", ngayMua=" + ngayMua +
                ", donGia=" + donGia +
                ", tongTien=" + tongTien +
                '}';
    }
    public void hienThiThongTinHoaDon () {
        System.out.println(this.toString());
    }

    public HoaDon themDonHang() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("---Thêm Đơn Hàng---");
        System.out.println("Mã Hóa Đơn:");
        String maHoaDon = scanner.nextLine();
        System.out.println("Mã Khách hàng: ");
        String maKhachHang = scanner.nextLine();
        System.out.println("Mã Sản Phẩm: ");
        String maDonHang = scanner.nextLine();
        System.out.println("Số lượng: ");
        int soLuong = Integer.parseInt(scanner.nextLine());
        System.out.println("Ngày mua: ");
        String ngayMuaHang = scanner.nextLine();
        System.out.println("Đơn giá: ");
        float donGia = Float.parseFloat(scanner.nextLine());
        System.out.println("Tổng tiền: ");
        float tongTien = Float.parseFloat(scanner.nextLine());

        Date ngayMuaHangDate = new Date();
        try {
            ngayMuaHangDate = new SimpleDateFormat("dd/MM/yyyy").parse(ngayMuaHang);
        } catch (Exception e) {}
        return null;
    }
}
