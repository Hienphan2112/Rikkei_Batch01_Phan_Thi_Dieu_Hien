package rtep_hien.demo.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import rtep_hien.demo.entity.khachhang;

public interface khachhangreponsity extends JpaRepository<khachhang,String> {

}
