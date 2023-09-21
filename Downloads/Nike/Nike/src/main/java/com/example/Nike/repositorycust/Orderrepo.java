package com.example.Nike.repositorycust;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Order;
@Repository
public interface Orderrepo extends JpaRepository<Order, Integer>{
	 List<Order> findByC(Customer customer);

}
