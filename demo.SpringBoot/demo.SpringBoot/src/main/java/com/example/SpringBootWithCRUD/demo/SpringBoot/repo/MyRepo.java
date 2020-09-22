package com.example.SpringBootWithCRUD.demo.SpringBoot.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringBootWithCRUD.demo.SpringBoot.model.Officers;

public interface MyRepo extends JpaRepository<Officers, Integer> {

}
