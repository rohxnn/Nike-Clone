package com.example.Nike.servicecust;

import java.util.List;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Cart;
import com.example.Nike.modelcust.Customer;

public interface Cartsecurity {
	public void AddtoCart(Product p,Customer c,int q,String size);
	public List<Cart> view(Customer c);
	public Cart Getbyid(int id);
	public void delete(Cart c);
}
