package rtep_hien.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import rtep_hien.demo.entity.khachhang;
import rtep_hien.demo.reponsitory.khachhangreponsity;
import rtep_hien.demo.service.Khachhangservice;

import java.util.List;

@Controller
public class hellowordController {

    @Autowired
    private Khachhangservice hien;
    @GetMapping("/hien")
    public String hienThiThongTin( Model model) {
        List<khachhang> list = hien.listAll();
        model.addAttribute("lists", list);
        return "hienthi";
    }
    @RequestMapping("/delete/{MaKhachHang}")
    public String xoaKhachHang(@PathVariable(name = "MaKhachHang") String MaKhachHang){
        hien.delete(MaKhachHang);
        return "redirect:/hien";
    }

}
