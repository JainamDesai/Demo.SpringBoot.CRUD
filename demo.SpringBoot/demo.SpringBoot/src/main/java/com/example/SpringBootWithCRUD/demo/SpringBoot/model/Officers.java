package com.example.SpringBootWithCRUD.demo.SpringBoot.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Officers {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	@Override
	public String toString() {
		return "Officers [id=" + id + ", name=" + name + ", lname=" + lname + ", password=" + password + ", email="
				+ email + "]";
	}
	public String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String lname;
	public String password;
	public String email;

}
