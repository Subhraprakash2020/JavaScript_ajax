<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
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
			<h:column>
				<f:facet name="header">
					<h:outputLabel value="Update" />
				</f:facet>
				<h:commandLink action="#{studentImpl.searchStudent(e.rollno)}">
					<i class="fa fa-pencil" aria-hidden="true"></i>
				</h:commandLink>
			</h:column>
		</h:dataTable>
		<h:commandButton id="buttonCommand"
			action="AddStudent.jsp?faces-redirect=true" value="Add Employ" />
			
			
		<div class="add_modal">
			<div class="sample">
				<h1>Vanilla Javascript Modal</h1>
				<p>Very simple modal with a few lines of JS.</p>

				<button class="open-modal">Open modal</button>
				<button class="open-modal">Open modal</button>

				<p>(with multiple click triggers)</p>

				<a href="https://dantewebmaster.github.io/" target="_blank">&lt;dw
					/&gt;</a>
			</div>

			<div class="modal">
				<span class="modal-backdrop close-modal"></span>
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title">Modal Title</h2>
						<button class="close-modal">&times</button>
					</div>
					<div class="modal-body">
						<h3>Modal body</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Cupiditate quos neque placeat totam, debitis error sunt saepe
							quia, mollitia ab nam doloremque. Expedita assumenda provident,
							dolore doloribus molestias reprehenderit aliquam?</p>
					</div>
					<div class="modal-footer">
						<button class="close-modal">Ok</button>
						<button class="close-modal">Cancel</button>
					</div>
				</div>
			</div>
		</div>		
	</h:form>
	<script src="js/coustom.js"></script>
	
</body>
	</html>
</f:view>
