package com.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.mvc.dao.StudentDao;
import com.mvc.entity.Student;

@Controller
public class StudentController {

	@Autowired
	private StudentDao studentDao;

	// Home page
	@RequestMapping("/")
	public String home() {
		return "home";
	}

	// Open form
	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("student", new Student());
		return "register";
	}

	// ✅ ONLY ONE SAVE METHOD
	@PostMapping("/save")
	public String saveStudent(@ModelAttribute("student") Student student) {

		System.out.println("First Name: " + student.getFirstName());
		System.out.println("Gender: " + student.getGender());
		System.out.println("Accept: " + student.isAccept());

		studentDao.saveOrUpdate(student);
		return "redirect:/list";
	}

	// List page
	@RequestMapping("/list")
	public String list(Model model) {
		List<Student> list = studentDao.getAllStudents();
		model.addAttribute("students", list);
		return "list";
	}

	// Edit
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model model) {
		Student s = studentDao.getStudent(id);
		model.addAttribute("student", s);
		return "register";
	}

	// Delete
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		studentDao.deleteStudent(id);
		return "redirect:/list";
	}
}