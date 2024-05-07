<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
    <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: 'Lato', sans-serif;
  color: #202020;
}

table {
  width: 100%;
  border-collapse: collapse;
  text-align: left;
  overflow: hidden;
}

td, th {
  border-top: 1px solid #ECF0F1;
  padding: 10px;
}

td {
  border-left: 1px solid #ECF0F1;
  border-right: 1px solid #ECF0F1;
}

th {
  background-color: #4ECDC4;
}

tr:nth-of-type(even) td {
  background-color: #9fd3ce; /* lighten(#4ECDC4, 35%) */
}

.total th {
  background-color: white;
}

.total td {
  text-align: right;
  font-weight: 700;
}
/* body {
    margin: 0;
    padding: 0;
    text-align: center;    
    background-color: #f0f0f0;
    font-family: Arial, sans-serif;
}

h2 {
    color: #333;
}

table {
    text-align: center;
    margin: 20px auto;
    border-collapse: collapse;
    width: 80%;
    margin: 20px auto;
}

table tr {
    background-color: #fff;
    transition: background-color 0.3s;
}

table tr:hover {
    background-color: #e0e0e0;
}

table th {
    text-align: center;
    background-color: #555;
    color: #fff;
    padding: 10px;
} */

.center {
    text-align: center;
}

.delete-button {
    margin-left: 15px;
}

.modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
    background-color: white;
    margin: 1% auto;
    padding: 50px;
    border: 1px solid #888;
    width: 50%;
    text-align: center;
    border-radius: 10px;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover, .close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
.form-group {
    margin-bottom: 15px;
    text-align: center;
}

.form-group label {
    display: inline-block;
    width: 63px;
    margin-right: 28px;
    text-align: end;
}

.form-group input, .form-group select {
    padding: 5px;
    min-width: calc(100% - 350px);
    box-sizing: border-box;
}


.button {
    display: inline-block;
    padding: 10px 20px;
    font-size: 18px;
    color: white;
    background-color: #17a2b8;
    border: none;
    border-radius: 5px;
    text-align: center;
    text-decoration: none;
    transition: background-color 0.3s;
    float: center;
}

.button:hover {
    background-color: #138496;
}

.button:focus,
.button:active {
    outline: none;
}

 .table-wrapper {
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
        }

</style>
<script>

    var modelView = '<h:outputText value="#{modelView}"/>';
    console.log("Modelview",modelView);

    $(document).ready(function() {
        togelModelView();
    });
    
    function togelModelView() {   
        if(modelView == 'open') {
            openModal();
        } else if(modelView == 'close'){
            closeModal();
        }
    }

    function openModal() {
        $("#myModal").css("display", "block");
    }

    function closeModal() {
        $("#myModal").css("display", "none");
    }

    $(document).ready(function() {
        $(".myModal").click(function(e) {
            modelView = 'open'; // Set modelView to open when the modal link is clicked
            togelModelView(); // Open the modal
        });
    });
</script>
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
                <h:commandLink styleClass="myModal"
                        action="#{studentImpl.searchStudentEJb(e.rollno)}">
                        <i class="fa fa-edit" style="font-size: 30px; color: blue"></i>
                    </h:commandLink>
            </h:column>
        </h:dataTable>
        <h:commandLink action="AddStudent.jsp" value="Add Employ" />
    </h:form>
   <!-- Modal -->
        <div id="myModal" class="modal">
            <div class="modal-content">
            <h:form>
            <h:commandLink styleClass="close-button" action="#{studentImpl.togelModelView()}">
				<span class="close" onclick="closeModal()">&times;</span>
			</h:commandLink>
            
                <h3>Edit Employ Details</h3>
                
                <div class="form-group">
                    <label for="dept">Roll No :</label> <h:inputText id="rollno" value="#{studentMap.rollno}" />
                </div>
                <div class="form-group">
                    <label for="desig">Name :</label> <h:inputText id="name" value="#{studentMap.name}" />
                </div>
                <div class="form-group">
                    <label for="basic">Sec:</label> <h:inputText id="sec" value="#{studentMap.sec}"/>
                </div>
               <h:commandButton value="Update" 
                    	action="#{studentImpl.updateStudent(studentMap)}" />                
            </h:form>
            </div>
        </div>

</body>
    </html>
</f:view>
