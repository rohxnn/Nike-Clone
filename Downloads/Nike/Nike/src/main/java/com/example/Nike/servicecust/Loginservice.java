package com.example.Nike.servicecust;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Nike.modelcust.Customer;
import com.example.Nike.repositorycust.LoginCustrepo;

@Service
@Transactional
public class Loginservice implements Loginsecurity {
	@Autowired
	 private LoginCustrepo service;
	
	public void SaveData(Customer c)
	{
		service.save(c);
	}
	public Customer login(String email,String pass)
	{
		return service.findByEmailAndPassword(email, pass);
	}
	public Customer Getbyid(int id)
	{
		return service.findById(id).orElseThrow(null);
	}
	public List<Customer> Findall()
	{
		return service.findAll();
	}
	public void deleteuser(Customer c)
	{
		service.delete(c);
	}

}
