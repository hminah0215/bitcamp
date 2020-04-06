package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Product;

@Repository							//crud와 관련된것을 모두 제공해줌. 컨트롤러만 있으면됨
public interface ProductDao extends JpaRepository<Product, Integer> {
									//어떤 엔티티와 연결할것인지, pk의 자료형이 무엇인지 적으면 됨
}
