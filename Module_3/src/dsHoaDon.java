import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;

public class dsHoaDon {
    ArrayList<HoaDon> hoaDon;

    public dsHoaDon(){
        hoaDon = new ArrayList<>();
    }
    public dsHoaDon(ArrayList<HoaDon> hoaDon) {
        this.hoaDon = hoaDon;
    }

    public ArrayList<HoaDon> getHoaDon() {
        return hoaDon;
    }

    public void setHoaDon(ArrayList<HoaDon> hoaDon) {
        this.hoaDon = hoaDon;
    }
    public HoaDon timHoaDonTheoMaKhachHang(String maKH) {
        if (hoaDon == null ) {
            System.out.println("Không tồn tại hóa đơn.");
        }
        else {
            for (HoaDon hoadon : hoaDon) {
                if (hoadon.getMaHoaDon() == maKH) {
                    return hoadon;
                }
            }
        }
        return null;
    }
    public void themHoaDon(HoaDon hoaDon) {
        this.hoaDon.add(hoaDon);
    }
    public void hienThiTatCaHoaDon() {
        if (hoaDon == null) {
            System.out.println("Không có hóa đơn.");
        } else {
            Iterator<HoaDon> iterator = hoaDon.iterator();
            HoaDon hoaDon;
            while (iterator.hasNext()) {
                hoaDon = iterator.next();
                hoaDon.hienThiThongTinHoaDon();
            }
        }
    }
}
