import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Sach extends SanPham {
    private String nhaXuatBan;
    private int namSanXuat;
    private String tacGia;
    private Date ngayXuatBan;
    private int lanTaiBan;

    public Sach() {
        super(maSanPham, tenSanPham, soLuong, donGia, thuocDanhMuc);
        this.nhaXuatBan = nhaXuatBan;
        this.namSanXuat = namSanXuat;
        this.tacGia = tacGia;
        this.ngayXuatBan = ngayXuatBan;
        this.lanTaiBan = lanTaiBan;
    }

    public String getNhaXuatBan() {
        return nhaXuatBan;
    }

    public void setNhaXuatBan(String nhaXuatBan) {
        this.nhaXuatBan = nhaXuatBan;
    }

    public int getNamSanXuat() {
        return namSanXuat;
    }

    public void setNamSanXuat(int namSanXuat) {
        this.namSanXuat = namSanXuat;
    }

    public String getTacGia() {
        return tacGia;
    }

    public void setTacGia(String tacGia) {
        this.tacGia = tacGia;
    }

    public Date getNgayXuatBan() {
        return ngayXuatBan;
    }

    public void setNgayXuatBan(Date ngayXuatBan) {
        this.ngayXuatBan = ngayXuatBan;
    }

    public int getLanTaiBan() {
        return lanTaiBan;
    }

    public void setLanTaiBan(int lanTaiBan) {
        this.lanTaiBan = lanTaiBan;
    }

    @Override
    public String toString() {
        return "Sach{" +
                "nhaXuatBan='" + nhaXuatBan + '\'' +
                ", namSanXuat=" + namSanXuat +
                ", tacGia='" + tacGia + '\'' +
                ", ngayXuatBan=" + ngayXuatBan +
                ", lanTaiBan=" + lanTaiBan +
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
     if (loaiKhachHang == "Thường" ) return 0.02;
     else if (loaiKhachHang == "VIP1") return 0.05;
     else if (loaiKhachHang == "VIP2") return 0.1;
     else return 0;
    }
    public SanPham themSanPhamSach() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("------Thêm Sản Phẩm Sách");
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

        System.out.println("Nhà xuất bản: ");
        String nhaXuatBan = scanner.nextLine();
        System.out.println("Năm xuất bản: ");
        String namXuatBan = scanner.nextLine();
        System.out.println("Tác giả: ");
        String tacGia = scanner.nextLine();
        System.out.println("Ngày xuất bản: ");
        String ngayXuatBan = scanner.nextLine();
        System.out.println("Lần tái bản: ");
        int lanTaiBan = Integer.parseInt(scanner.nextLine());

        Date ngayXuatBanDate =  new Date();
        try {
            ngayXuatBanDate = new SimpleDateFormat("dd/MM/yyyy").parse(ngayXuatBan);
        } catch (Exception e) {}
        return null;
    }

}
