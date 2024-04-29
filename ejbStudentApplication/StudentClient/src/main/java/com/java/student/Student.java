package com.java.student;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student implements Serializable{
	
	@Id
	@Column(name="rollno")
	private int rollno;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "sec")
	private String sec;
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSec() {
		return sec;
	}
	public void setSec(String sec) {
		this.sec = sec;
	}
	@Override
	public String toString() {
		return "Student [rollno=" + rollno + ", name=" + name + ", sec=" + sec + "]";
	}
	public Student(int rollno, String name, String sec) {
		super();
		this.rollno = rollno;
		this.name = name;
		this.sec = sec;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
