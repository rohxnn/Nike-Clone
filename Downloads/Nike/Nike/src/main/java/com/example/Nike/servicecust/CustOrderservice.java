package com.example.Nike.servicecust;


import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Nike.modelcust.Cart;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Order;
import com.example.Nike.repositorycust.Custcartrepo;
import com.example.Nike.repositorycust.Orderrepo;

@Service
@Transactional
public class CustOrderservice implements Ordersecurity {
	
	@Autowired
	private Orderrepo service;
	@Autowired
	private Custcartrepo prod;
	
	
	public void CarttoOrder(Customer cust,String address)
	{
		
		LocalDate currentdate=LocalDate.now();
		// Define the desired date format
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        // Format the LocalDate as a string
        String dateString = currentdate.format(formatter);

	
		List<Cart> cart=prod.findByCustomer(cust);
		
		for (Cart cart2 : cart) {
			
			Order order=new Order();
			
			order.setC(cart2.getCustomer());
			order.setP(cart2.getP_id());
			order.setStatus("Order Placed");
			order.setDate(dateString);
			order.setSize(cart2.getSize());
			order.setQuantity(cart2.getQuantity());
			order.setAddress(address);
			service.save(order);
			
			
			prod.deleteById(cart2.getId());
			
			
			
		}
	}
	
	public List<Order> view(Customer c)
	{
		return service.findByC(c);
	}
	
	public List<Order>  Findall()
	{
		return service.findAll();
	}
	public Order FindByid(int id)
	{
		return service.findById(id).get();
	}
	
	public void save(Order o)
	{
	  service.save(o);
	}
	
	public void delete(Order o)
	{
		service.delete(o);
	}

}
