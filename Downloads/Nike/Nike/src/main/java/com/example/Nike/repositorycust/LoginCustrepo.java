package com.example.Nike.repositorycust;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Nike.modelcust.Customer;

@Repository
public interface LoginCustrepo extends JpaRepository<Customer, Integer> {
	
	Customer findByEmailAndPassword(String email,String password);
	
	

}
