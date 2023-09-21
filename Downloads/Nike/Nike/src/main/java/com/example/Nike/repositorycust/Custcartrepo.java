package com.example.Nike.repositorycust;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.Nike.modelcust.Cart;
import com.example.Nike.modelcust.Customer;
@Repository
public interface Custcartrepo extends JpaRepository<Cart, Integer> {
	  List<Cart> findByCustomer(Customer customer);
	 
	

}
