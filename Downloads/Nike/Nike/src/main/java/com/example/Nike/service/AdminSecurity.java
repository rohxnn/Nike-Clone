package com.example.Nike.service;

import java.util.List;

import com.example.Nike.model.ImageManagement;
import com.example.Nike.model.Product;

public interface AdminSecurity {
	public void AddProd(Product p);
	public List<Product> Viewprod();
	public void deleteproduct(int id);
	public Product Getbyid(int id);
	public void updateProduct(Product p);

}
