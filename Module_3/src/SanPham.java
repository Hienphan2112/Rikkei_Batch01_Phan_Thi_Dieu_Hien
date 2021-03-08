public abstract class SanPham {
    protected String maSanPham, tenSanPham;
    protected int soLuong;
    protected float donGia;
    String thuocDanhMuc;

    public abstract void HienThiThongTin();
    public abstract double PhanTramGiamGia(String loaiKhachHang);

    public String getMaSanPham() {
        return maSanPham;
    }

    public void setMaSanPham(String maSanPham) {
        this.maSanPham = maSanPham;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public float getDonGia() {
        return donGia;
    }

    public void setDonGia(float donGia) {
        this.donGia = donGia;
    }

    public String getThuocDanhMuc() {
        return thuocDanhMuc;
    }

    public void setThuocDanhMuc(String thuocDanhMuc) {
        this.thuocDanhMuc = thuocDanhMuc;
    }

    public SanPham(String maSanPham, String tenSanPham, int soLuong, float donGia, String thuocDanhMuc) {
        this.maSanPham = maSanPham;
        this.tenSanPham = tenSanPham;
        this.soLuong = soLuong;
        this.donGia = donGia;
        this.thuocDanhMuc = thuocDanhMuc;
    }
}
