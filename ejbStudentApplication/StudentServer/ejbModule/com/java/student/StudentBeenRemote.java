package com.java.student;

import java.util.List;

import javax.ejb.Remote;

@Remote
public interface StudentBeenRemote {
	List<Student> showStudent();
	String addStudent(Student student);
	Student searchStudent(int rollno);
	String deleteStudentRecord(int rollno);
	String updateStudent(Student student);
}
