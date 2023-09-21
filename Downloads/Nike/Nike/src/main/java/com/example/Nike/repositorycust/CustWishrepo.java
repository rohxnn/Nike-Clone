package com.example.Nike.repositorycust;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Wishprod;

@Repository
public interface CustWishrepo extends JpaRepository<Wishprod, Integer>{
	  List<Wishprod> findByC(Customer c);

}
