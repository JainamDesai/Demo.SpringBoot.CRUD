package com.example.SpringBootWithCRUD.demo.SpringBoot.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.SpringBootWithCRUD.demo.SpringBoot.model.Officers;
import com.example.SpringBootWithCRUD.demo.SpringBoot.repo.MyRepo;

@Controller
public class OfficersController {
	@Autowired
	MyRepo repo;
	@RequestMapping("/home")
	public String homePage() {
		return "home.jsp";
	}
	@RequestMapping("/welcome")
	public String welcomeSite() {
		return "Welcome.jsp";
	}
	@RequestMapping("/saveData")
	public ModelAndView saveDate(Officers officer) {
		ModelMap map = new ModelMap();
		repo.save(officer);
		map.addAttribute("id",officer.getId());
		map.addAttribute("name",officer.getName());
		map.addAttribute("lname",officer.getLname());
		map.addAttribute("email",officer.getEmail());
		map.addAttribute("password",officer.getPassword());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AllDataGet.jsp");
		mv.addObject("obj",map);
		return mv;
	}
	@RequestMapping("/updateData")
	public ModelAndView updateData(@RequestParam("id") int id) {
		ModelMap map = new ModelMap();
		Officers o =  repo.findById(id).orElse(new Officers());
		System.out.println("sasass"+id);
		map.addAttribute("id", o.getId());
		map.addAttribute("name",o.getName());
		map.addAttribute("lname",o.getLname());
		map.addAttribute("email",o.getEmail());
		ModelAndView mv = new ModelAndView("Update.jsp");
		mv.setViewName("Update.jsp");
		mv.addObject("obj",map);
		return mv;
	}
	@RequestMapping("/storeData")
	public ModelAndView storeUpdatedData(int id,Officers of) {
		Officers o =  repo.findById(id).orElse(new Officers());
		 o.setName(of.getName());
		o.setLname(of.getLname());
		o.setEmail(of.getEmail());
		o.setPassword(of.getPassword());
		repo.save(o);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AllDataGet.jsp");
		mv.addObject("obj",o);
		return mv;
	}
	@RequestMapping("/deleteDate")
	public String  deleteData(int id)
	{
		Officers of = repo.findById(id).orElse(new Officers());
		repo.delete(of);
		return "delete.jsp";
		
		
	}

}
