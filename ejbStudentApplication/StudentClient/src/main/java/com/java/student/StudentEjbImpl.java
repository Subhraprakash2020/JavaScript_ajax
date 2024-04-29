package com.java.student;

import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;
import javax.naming.NamingException;

public class StudentEjbImpl {
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
	
	public String searchStudent(int rollno) throws NamingException {
		StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		Student student = remote.searchStudent(rollno);
		Map<String,Object> sessionMap = 
				FacesContext.getCurrentInstance().getExternalContext().getSessionMap();		
		 sessionMap.put("studentMap", student);
		 return "UpdateStudent.jsp?faces-redirect=true";
		
	}
	
	public String updateStudent(Student student) throws NamingException {
		StudentBeenRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		remote.updateStudent(student);
		return "ShowStudent.jsp?faces-redirect=true";
	}
	
}
