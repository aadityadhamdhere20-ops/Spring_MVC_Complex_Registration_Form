package com.mvc.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.mvc.entity.Student;

public class StudentDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void saveOrUpdate(Student s) {
		hibernateTemplate.saveOrUpdate(s);
	}

	public List<Student> getAllStudents() {
		return hibernateTemplate.loadAll(Student.class);
	}

	public Student getStudent(int id) {
		return hibernateTemplate.get(Student.class, id);
	}

	@Transactional
	public void deleteStudent(int id) {
		Student s = hibernateTemplate.get(Student.class, id);
		hibernateTemplate.delete(s);
	}
}
