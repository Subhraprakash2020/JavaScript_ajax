package com.java.student;

import java.util.List;

//import javax.ejb.LocalBean;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


/**
 * Session Bean implementation class StudentBeen
 */
@Stateless
//@LocalBean
@Remote(StudentBeenRemote.class)
public class StudentBeen implements StudentBeenRemote {	
	
	 @PersistenceContext(unitName = "EmpMgmtPU")
	 private EntityManager entityManager;

    /**
     * Default constructor. 
     */
    public StudentBeen() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public List<Student> showStudent() {
		System.out.println("Entity manager is ::"+entityManager);
		Query query = (Query) entityManager.createQuery("Select e from Student e");
		return (List<Student>) query.getResultList();
	}

	@Override
	public String addStudent(Student student) {
		entityManager.persist(student);
		return "Student record inserted";
	}

	@Override
	public Student searchStudent(int rollno) {
		Student student = entityManager.find(Student.class, rollno);
		return student;
	}

	@Override
	public String deleteStudentRecord(int rollno) {
		Student studentFound = searchStudent(rollno);
		if(studentFound != null) {
			entityManager.remove(studentFound);
			return "Record Deleted....";
		}
		return "Record not found...";
	}

	@Override
	public String updateStudent(Student student) {
		Student studentFound = searchStudent(student.getRollno());
		if(studentFound !=null) {
			entityManager.merge(student);
			return "Student record Updated.....";
		}
		return "Record not Found....";
	}

}
