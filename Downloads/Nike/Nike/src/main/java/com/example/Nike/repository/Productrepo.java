package com.example.Nike.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.Nike.model.Product;
@Repository
public interface Productrepo extends JpaRepository<Product, Integer> {
	@Query("SELECT p FROM Product p WHERE p.type='men'")
	List<Product> findAllMen();
	@Query("SELECT p FROM Product p WHERE p.type='women'")
	List<Product> findAllWomen();
	@Query("SELECT p FROM Product p WHERE p.type='kids'")
	List<Product> findAllkids();
	@Query("SELECT p FROM Product p WHERE p.type='men' and category='shoe'")
	List<Product> findMenShoe();
	@Query("SELECT p FROM Product p WHERE p.type='men' and category='clothing'")
	List<Product> findMencloth();
	@Query("SELECT p FROM Product p WHERE p.type='women' and category='shoe'")
	List<Product> findWomenShoe();
	@Query("SELECT p FROM Product p WHERE p.type='women' and category='clothing'")
	List<Product> findwomencloth();
	@Query("SELECT p FROM Product p WHERE p.type='kids' and category='shoe'")
	List<Product> findKidsShoe();
	@Query("SELECT p FROM Product p WHERE p.type='kids' and category='clothing'")
	List<Product> findKidscloth();

	

	

}
