package com.example.Nike.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Nike.model.AdminUser;
@Repository
public interface AdminLoginrepo extends JpaRepository<AdminUser, Integer> {
	AdminUser findByUsernameAndPassword(String username,String password);

}
