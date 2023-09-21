package com.example.Nike.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Nike.model.ImageManagement;
@Repository
public interface AdminImagerepo extends JpaRepository<ImageManagement, Integer> {
	

}
