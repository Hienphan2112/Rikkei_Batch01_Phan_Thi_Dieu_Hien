import java.util.ArrayList;
import java.util.Iterator;

public class dsSanPham {
    ArrayList<SanPham> sanPhams;

    public dsSanPham() {
        sanPhams = new ArrayList<>();
    }

    public ArrayList<SanPham> getSanPham() {
        return sanPhams;
    }

    public void setSanPham(ArrayList<SanPham> sanPhams) {
        this.sanPhams = sanPhams;
    }

    public void themMoiSanPham(SanPham sanPham) {
        this.sanPhams.add(sanPham);
    }
    public void xoaSanPham(SanPham sanPham) {
        this.sanPhams.remove(sanPham);
    }

    public SanPham timSanPhamTheoMaSanPham(String maSanPham) {
        Iterator<SanPham> iterator = getSanPham().iterator();
        SanPham sanPham;
        while (iterator.hasNext()){
            sanPham = iterator.next();
            if (sanPham.getMaSanPham() == maSanPham){
                return sanPham;
            }
        }
        return null;
    }
    public void hienThiTatCaSanPhamSach() {
        Iterator<SanPham> iterator = getSanPham().iterator();
        SanPham sanPham;
        while ((iterator.hasNext())) {
            sanPham = iterator.next();
            if (sanPham instanceof Sach)
                sanPham.HienThiThongTin();
        }
    }
    public void hienThiTatCaDoChoiTreEm(){
        Iterator<SanPham> iterator = getSanPham().iterator();
        SanPham sanPham;
        while ((iterator.hasNext())){
            sanPham = iterator.next();
            if (sanPham instanceof DoChoiTreEm)
                sanPham.HienThiThongTin();
        }
    }
    public void hienThiTatCaDoDungHocTap() {
        Iterator<SanPham> iterator = getSanPham().iterator();
        SanPham sanPham;
        while (iterator.hasNext()){
            sanPham = iterator.next();
            if (sanPham instanceof DoDungHocTap)
                sanPham.HienThiThongTin();
        }
    }
    public void hienThiTatCaSanPham(){
        Iterator<SanPham> iterator = getSanPham().iterator();
        SanPham sanPham;
        while (iterator.hasNext()){
            sanPham = iterator.next();
            sanPham.HienThiThongTin();
        }
    }
}
