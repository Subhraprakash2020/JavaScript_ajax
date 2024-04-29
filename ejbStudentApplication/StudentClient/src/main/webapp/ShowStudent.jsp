<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h:form>
		<center>
			<h2>
				<h:outputText value="Employ Records" />
			</h2>
		</center>
		<h:dataTable value="#{studentImpl.showStudent()}" var="e"
			border="3">
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
			<h:commandButton action="#{studentImpl.deleteStudentRecord(e.rollno)}" value="Delete" />
			</h:column>
			<h:column >
			<f:facet name="header">
                    	<h:outputLabel value="Update" />
                    </f:facet>
			<h:commandButton action="#{studentImpl.searchStudent(e.rollno)}" value="Update" />
			</h:column>
		</h:dataTable>
		<center>
			<h:commandButton action="AddStudent.jsp?faces-redirect=true"
				value="Add Employ" />
				
				
		</center>

	</h:form>
</body>
	</html>
</f:view>
