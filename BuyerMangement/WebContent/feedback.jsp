<%@page import="com.Feedback"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Page</title>


<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/feedback.js"></script>






</head>
<body>




<div class="container"><div class="row"><div class="col-6">   
<h1>Feedback Page</h1>
  <form id="formFeedback" name="formFeedback"  method="post" action="feedback.jsp">
     Name:
 <input id="name" name="name" type="text" placeholder="Full Name" pattern="[a-zA-Z][a-zA-Z ]{2,}"class="form-control form-control-sm">
 <br> Contact Number:
 <input id="contactNo" name="contactNo" type="text"  pattern="[0-9]{10}" placeholder="1234567890" class="form-control form-control-sm">
 <br> Email :
 <input id="email" name="email" type="text" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" class="form-control form-control-sm">
 <br> Comment:
 <input id="comment" name="comment" type="text" placeholder="write Something" class="form-control form-control-sm">
 
 <br>How do you rate for your overall experience:
<input id="ratetype" name="ratetype" type="text" class="form-control form-control-sm">
   <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
 <input type="hidden" id="hidIDSave" name="hidIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divFeedbacksGrid">
 <%
 Feedback feedbackObj = new Feedback(); 
 out.print(feedbackObj.readFeedbacks()); 
 %>

</div> </div> </div>
 
</div>
</body>
</html>