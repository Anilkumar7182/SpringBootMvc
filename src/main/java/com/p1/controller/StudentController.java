package com.p1.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.p1.binding.Student;
import com.p1.entity.StudentEntity;
import com.p1.repo.StudentRepository;

@Controller
public class StudentController {
	
	@Autowired
	private StudentRepository repo;
	
	// method to save student save data
	@GetMapping("/")
	public String  loadForm(Model model) {
		
		loadFormData(model);
		
		return"index";
	}

	private void loadFormData(Model model) {
		List<String> coursesList = new ArrayList<>();
		coursesList.add("Java");
		coursesList.add("Python");
		coursesList.add("DevOps");
		coursesList.add("AWS");
		coursesList.add("Database");
		
		List<String> timingsList= new ArrayList<>();
		timingsList.add("Morning");
		timingsList.add("Afernoon");
		timingsList.add("Evening");
		
		Student student = new Student();
		
		model.addAttribute("course",coursesList); 
		model.addAttribute("timings",timingsList);
		model.addAttribute("student", student);
	}
	
	//method to save student form data
	
	@PostMapping("/save")
	public String handleSubmit (Student s,Model model) {
		
		System.out.println(s);
		
		// logic to save data 
		
		
		
		 StudentEntity entity = new StudentEntity();
		 
		 // copy data from binding obj to entity obj
		 BeanUtils.copyProperties(s, entity);
		 
		 entity.setTimings(Arrays.toString(s.getTimings()));
		 
		 repo.save(entity);
		
		
		
		model.addAttribute("msg","save data succfully");
		
		loadFormData(model);
		
		
		return "index";
		
	}
	// method to display saved student data
	
	@GetMapping("/viewStudents")
	public String getStudentsData(Model model) {
		
		List<StudentEntity> studentsList = repo.findAll();
		model.addAttribute("students", studentsList);
		
		return "data";
	}

}
