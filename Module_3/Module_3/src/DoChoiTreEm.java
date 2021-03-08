import java.util.Scanner;

public class DoChoiTreEm extends SanPham{
    private String xuatSu, thuongHieu, nhaCungCap, huongDanSuDung;

    public DoChoiTreEm(String maSanPham, String tenSanPham, int soLuong, float donGia, String thuocDanhMuc, String xuatSu, String thuongHieu, String nhaCungCap, String huongDanSuDung) {
        super(maSanPham, tenSanPham, soLuong, donGia, thuocDanhMuc);
        this.xuatSu = xuatSu;
        this.thuongHieu = thuongHieu;
        this.nhaCungCap = nhaCungCap;
        this.huongDanSuDung = huongDanSuDung;
    }

    public String getXuatSu() {
        return xuatSu;
    }

    public void setXuatSu(String xuatSu) {
        this.xuatSu = xuatSu;
    }

    public String getThuongHieu() {
        return thuongHieu;
    }

    public void setThuongHieu(String thuongHieu) {
        this.thuongHieu = thuongHieu;
    }

    public String getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(String nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }

    public String getHuongDanSuDung() {
        return huongDanSuDung;
    }

    public void setHuongDanSuDung(String huongDanSuDung) {
        this.huongDanSuDung = huongDanSuDung;
    }

    @Override
    public String toString() {
        return "DoChoi{" +
                "xuatSu='" + xuatSu + '\'' +
                ", thuongHieu='" + thuongHieu + '\'' +
                ", nhaCungCap='" + nhaCungCap + '\'' +
                ", huongDanSuDung='" + huongDanSuDung + '\'' +
                ", maSanPham='" + maSanPham + '\'' +
                ", tenSanPham='" + tenSanPham + '\'' +
                ", soLuong=" + soLuong +
                ", donGia=" + donGia +
                ", thuocDanhMuc='" + thuocDanhMuc + '\'' +
                '}';
    }

    @Override
    public void HienThiThongTin() {
        System.out.println(this.toString());
    }

    @Override
    public double PhanTramGiamGia(String loaiKhachHang) {
    if (loaiKhachHang == "Thường") return 0.02;
    else if (loaiKhachHang == "VIP1") return 0.05;
    else if (loaiKhachHang == "VIP2") return 0.07;
    else return 0;
    }
    public void themDoChoiTreEm() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("------Thêm Sản Phẩm Đồ chơi trẻ em");
        System.out.println("Mã sản phẩm: ");
        String maSanPham = scanner.nextLine();
        System.out.println("Tên sản phẩm: ");
        String tenSanPham = scanner.nextLine();
        System.out.println("Số lượng: ");
        int soLuong = Integer.parseInt(scanner.nextLine());
        System.out.println("Đơn giá: ");
        float donGia = Float.parseFloat(scanner.nextLine());
        System.out.println("Thuộc danh mục: ");
        String thuocDanhMuc = scanner.nextLine();

        System.out.println("Xuất sứ: ");
        String xuatSu = scanner.nextLine();
        System.out.println("Thương hiệu: ");
        String thuongHieu = scanner.nextLine();
        System.out.println("Nhà cung cấp: ");
        String nhaCungCap = scanner.nextLine();
        System.out.println("Hướng dẫn sử dụng: ");
        String huongDanSuDung = scanner.nextLine();

        DoChoiTreEm doChoiTreEm = new DoChoiTreEm(maSanPham, tenSanPham, soLuong, donGia, thuocDanhMuc, xuatSu, thuongHieu, nhaCungCap, huongDanSuDung );
    }
}
