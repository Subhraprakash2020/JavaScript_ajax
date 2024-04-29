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
                <h2 style="text-align: center" class="col-sm-4">Student Record</h2>
            <hr/>
Roll No
                    <h:inputText id="empno" value="#{studentMap.rollno}" /> <br/>
Student Name
                    <h:inputText id="name" value="#{studentMap.name}" /> <br/>
Sec 
                    <h:inputText id="gender" value="#{studentMap.sec}" /> <br/>                    

                    <h:commandButton value="Update" 
                    	action="#{studentImpl.updateStudent(studentMap)}" />
        
        </h:form>
    </body>
</html>
</f:view>
