import java.util.ArrayList;

public class dsSach {
    ArrayList<Sach> sach;

    public dsSach() {
        sach = new ArrayList<Sach>();
    }
    public dsSach(ArrayList<Sach> saches) {
        sach = saches;
    }

    public ArrayList<Sach> getSach() {
        return sach;
    }

    public void setSach(ArrayList<Sach> sach) {
        this.sach = sach;
    }
}
