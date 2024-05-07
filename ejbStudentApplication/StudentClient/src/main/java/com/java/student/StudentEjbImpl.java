package com.java.student;

import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;
import javax.naming.NamingException;

public class StudentEjbImpl {
	
private static String modelView = "close";
	
	public String getModelView() {
        return modelView;
    }
	public void setModelView(String modelView) {
        this.modelView = modelView;
    }
	
	public void togelModelView() {
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		if(modelView.equals("open")) {
			modelView = "close";
			sessionMap.put("modelView", modelView);
		}else if(modelView.equals("close")){
			modelView = "open";
			sessionMap.put("modelView", modelView);
		}
	}
	
	public List<Student> showStudent() throws NamingException  {
		StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		return remote.showStudent();
	}
	
	public String addStudent(Student student) throws NamingException {
		StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		remote.addStudent(student);
		return "ShowStudent.jsp?faces-redirect=true";
	}
	
	public String deleteStudentRecord(int rollno) throws NamingException {
		StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		remote.deleteStudentRecord(rollno);
		return "EmployDaoTable.jsp?faces-redirect=true";
	}
	
	public Student searchStudent(int rollno) throws NamingException {
		StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		Student student= remote.searchStudent(rollno);
		return student;
	}

	public void searchStudentEJb(int rollno) throws NamingException {
	    System.out.println("hit...........");
	    StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
	    Student student = remote.searchStudent(rollno);
	    System.out.println("student..........." + student);
	    Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	    sessionMap.put("studentMap", student); // Set the studentMap attribute
	    togelModelView();
	}

	
	public void updateStudent(Student student) throws NamingException {
		StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		remote.updateStudent(student);
		togelModelView();

	}
	
}
