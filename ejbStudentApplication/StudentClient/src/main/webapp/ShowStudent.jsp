<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel = "stylesheet" href="css/style.css">
<style>
 button{
     padding: 15px;
    background-color: green;
    border: none;
    border-radius: 10px;
    font-size: 20px;
    color: white;
}
 }
</style>
</head>
<body>
	<h:form>
		<center>
			<h2>
				<h:outputText value="Student Records" />
			</h2>
		</center>
		<h:dataTable value="#{studentImpl.showStudent()}" var="e">
			<h:column>
				<f:facet name="header">
					<h:outputLabel value="Rollno" />
				</f:facet>
				<h:outputText value="#{e.rollno}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputLabel value="Student Name" />
				</f:facet>
				<h:outputText value="#{e.name}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputLabel value="Sec" />
				</f:facet>
				<h:outputText value="#{e.sec}" />
			</h:column>
			<h:column>
			<f:facet name="header">
                    	<h:outputLabel value="Delete" />
                    </f:facet>
			<h:commandLink action="#{studentImpl.deleteStudentRecord(e.rollno)}">
			<i class="fa fa-trash" aria-hidden="true"></i>
			</h:commandLink>
			</h:column>
			<h:column >
			<f:facet name="header">
                    	<h:outputLabel value="Update" />
                    </f:facet>
			<h:commandLink action="#{studentImpl.searchStudent(e.rollno)}">
			<i class="fa fa-pencil" aria-hidden="true"></i>
			</h:commandLink>
			</h:column>
		</h:dataTable>
			<h:commandButton action="AddStudent.jsp?faces-redirect=true" style="    padding: 15px;
    background-color: green;
    border: none;
    border-radius: 10px;
    font-size: 20px;
    color: white;
    courser: pointer;	
}"
				value="Add Employ" />
	</h:form>
</body>
	</html>
</f:view>
