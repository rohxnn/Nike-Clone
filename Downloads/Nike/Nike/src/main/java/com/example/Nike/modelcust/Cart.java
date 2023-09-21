package com.example.Nike.modelcust;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.example.Nike.model.Product;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String size;
	private int quantity;
	
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@ManyToOne
	@JoinColumn(name = "c_id")
	private Customer customer;
	public Cart(Customer customer, Product p_id) {
		super();
		this.customer = customer;
		this.p_id = p_id;
	}
	@ManyToOne
	@JoinColumn(name = "p_id")
	private Product p_id;
	public Product getP_id() {
		return p_id;
	}
	public void setP_id(Product p_id) {
		this.p_id = p_id;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	

}
