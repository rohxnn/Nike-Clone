package com.example.Nike.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ImageManagement {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String image;
	private String name;
	private String type;
	private Integer price;
	private String descrip;
	@OneToOne(cascade = CascadeType.ALL)
	private Product p;
	
	
	public Product getP() {
		return p;
	}
	public void setP(Product p) {
		this.p = p;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getDescrip() {
		return descrip;
	}
	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}
	

}
