import java.util.Scanner;

class MainMenu {
    dsSanPham sanPhams;
    dsHoaDon hoaDons;
    Scanner scanner;

    public MainMenu() {
        sanPhams = new dsSanPham();
        hoaDons = new dsHoaDon();
        scanner = new Scanner(System.in);
    }

    public MainMenu(dsSanPham sanPhams, dsHoaDon hoaDons) {
        this.sanPhams = sanPhams;
        this.hoaDons = hoaDons;
    }

    public void menu(){

        boolean bool = true;
        while (bool){
            System.out.println("---------------------------------");;
            System.out.println("1. Thêm sản phẩm");
            System.out.println("2. Thêm Đơn hàng ");
            System.out.println("3. Hiển thị thông tin sản phẩm");
            System.out.println("4. Hiển thị danh sách Đơn Hàng ");
            System.out.println("5. Tìm kiếm");
            System.out.println("6. Thoát");
            int index;
            Scanner scanner = new Scanner(System.in);
            index = scanner.nextInt();
            switch (index){
                case 1:
                    menuThemSanPham();
                    break;
                case 2:
                    menuThemDonHang();
                    break;
                case 3:
                    menuHienThiThongTinSanPham();
                    break;
                case 4:
                    menuHienThiDanhSachDonHang();
                    break;
                case 5:
                    menuTimKiem();
                    break;
                case 6:
                    return;
            }
        }

    }

    private void menuThemSanPham() {
        int index;
        while (true) {
            System.out.println("1. Thêm các sản phẩm Sách");
            System.out.println("2. Thêm các sản phẩm Đồ dùng học tập");
            System.out.println("3. Thêm các sản phẩm Đồ chơi trẻ em");
            System.out.println("4. Thoát");

            index = scanner.nextInt();
            switch (index) {
                case 1:
                    System.out.println("----------------------------");
                    System.out.println("-------Thêm sản phẩm sach---------");
                    System.out.println("----------------------------");
                    Sach sach = new Sach();
                    try {
                        //sanPhams.themSanPham(sach.Them());
                        System.out.println("Them thanh cong!");
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                    break;
                case 2:
                    System.out.println("Thêm sản phẩm đồ dùng học tập.");
                    try {
                        System.out.println("Thêm thành công!");
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                    break;

                case 3:
                    System.out.println("Thêm sản phẩm đồ chơi trẻ em");
                    try {
                        System.out.println("Thêm thành công!");
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                    break;
                case 4:
                    return;
            }
        }
    }

    private void menuThemDonHang() {
        HoaDon hoaDon = new HoaDon();
        hoaDon = hoaDon.themDonHang();
        hoaDon.hienThiThongTinHoaDon();
        hoaDons.themHoaDon(hoaDon);
        System.out.println("Them thanh cong!");
    }
    private void menuHienThiThongTinSanPham() {
        int index;
        while (true){
            System.out.println("-----Hiển thị thông tin sản phẩm--------");
            System.out.println("1. Hiển thị tất cả các sản phẩm Sách");
            System.out.println("2. Hiển thị tất cả các sản phẩm Đồ dùng học tập");
            System.out.println("3. Hiển thị tất cả các sản phẩm Đồ chơi trẻ em");
            System.out.println("4. Hiển thị tất cả các sản phẩm có trong nhà Sách");
            System.out.println("5. Thoat");
            index = scanner.nextInt();
            switch (index){
                case 1:
                    sanPhams.hienThiTatCaSanPhamSach();
                    break;
                case 2:
                    sanPhams.hienThiTatCaDoDungHocTap();
                    break;
                case 3:
                    sanPhams.hienThiTatCaDoChoiTreEm();
                    break;
                case 4:
                    sanPhams.hienThiTatCaSanPham();
                case 5:
                    return;
            }
        }
    }
    private void menuHienThiDanhSachDonHang() {
        System.out.println("Hiển thị danh sách đơn hàng");
        hoaDons.hienThiTatCaHoaDon();
    }

    private void menuTimKiem() {

        boolean bool = true;
        while (bool){
            System.out.println("-------------------------------------");
            System.out.println("-------------Tìm kiếm------------------");
            System.out.println("---------------------------------------------");
            System.out.println("1. Tìm kiếm Sản phẩm theo Mã sản phẩm");
            System.out.println("2. Tìm kiếm đơn hàng theo Mã Khách hàng");
            System.out.println("3. Thoat");
            int index = scanner.nextInt();
            switch (index) {
                case 1:
                    System.out.println("----------------------------------------");
                    System.out.println("---Tìm kiếm Sản phẩm theo Mã sản phẩm----");
                    System.out.println("----------------------------------------");
                    System.out.println("Nhap ma san pham: ");
                    String maSP = scanner.nextLine();
                    try {
                        SanPham sanPham = sanPhams.timSanPhamTheoMaSanPham(maSP);
                        sanPham.HienThiThongTin();
                    } catch (Exception e){
                        System.out.println(e);
                    }

                    break;
                case 2:
                    System.out.println("------Tìm kiếm đơn hàng theo Mã Khách hàng---------");
                    System.out.println("Nhập mã khách hàng: ");
                    scanner.nextLine();
                    String maKhachHang = scanner.nextLine();
                    try {
                        HoaDon hoaDon = hoaDons.timHoaDonTheoMaKhachHang(maKhachHang);
                        hoaDon.hienThiThongTinHoaDon();
                    } catch (Exception e){
                        System.out.println(e);
                    }

                    break;
                case 3:
                    return;
            }
        }
    }
}
