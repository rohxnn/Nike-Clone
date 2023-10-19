package com.example.Nike.servicecust;

import java.util.List;

import com.example.Nike.modelcust.Customer;

public interface Loginsecurity {
	public void SaveData(Customer c);
	public Customer login(String email,String pass);
	public Customer Getbyid(int id);
	public List<Customer> Findall();
	public void deleteuser(Customer c);

}
