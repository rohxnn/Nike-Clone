package com.example.Nike.servicecust;

import java.util.List;

import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Order;

public interface Ordersecurity {
	public void CarttoOrder(Customer cust,String address);
	public List<Order> view(Customer c);
	public List<Order>  Findall();
	public Order FindByid(int id);
	public void save(Order o);

}
