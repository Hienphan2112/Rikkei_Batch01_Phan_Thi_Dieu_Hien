package rtep_hien.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rtep_hien.demo.entity.khachhang;
import rtep_hien.demo.reponsitory.khachhangreponsity;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class Khachhangservice {
    @Autowired
    private khachhangreponsity khachhangreponsity;
    public List<khachhang> listAll(){
        return khachhangreponsity.findAll();
    }
    public void Save(khachhang kh) {
        khachhangreponsity.save(kh);
    }
    public khachhang get(String MaKhachHang){
        return khachhangreponsity.findById(MaKhachHang).get();
    }
    public void delete(String MaKhachHang) {
        khachhangreponsity.deleteById(MaKhachHang);
    }
}

