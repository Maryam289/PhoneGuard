<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
</head>
<body style="background-color: #d0d6d1">
<%@include file="component/navbar.jsp" %>
<div class="conatiner-fluid">
	<div class="row p-2">
	<div class="col-md-6 offset-md-3">
	<div class="card">
	<div class="card-body">
	<h4 class="text-center text-success">Registration Page</h4>
	
	<% 
	String sucssMsg=(String) session.getAttribute("sucssMsg");
	String errorMsg=(String) session.getAttribute("errorMsg");
	
	if (sucssMsg != null){
	%>
		<p class="text-success text-center"><%=sucssMsg%></p>
	<%
	session.removeAttribute("sucssMsg");
	}
	if (errorMsg != null){
	%>
		<p class="text-danger text-center"><%=errorMsg%></p>
	<%
	session.removeAttribute("errorMsg");
	}
	%>
	
	<form action="register" method="post">

	<div class="form-group">
	    <label for="exampleFormControlInput1">Enter Name</label>
	    <input name="name" type="text" class="form-control" id="exampleFormControlInput1">
	 </div>

	  <div class="form-group">
	    <label for="exampleFormControlInput1">Email address</label>
	    <input name="email" type="email" class="form-control" id="exampleFormControlInput1">
	  </div>
	  
	  <div class="form-group">
	    <label for="exampleInputPassword">Password</label>
	    <input name="password" type="password" class="form-control" id="exampleInputPassword">
	    <div class="text-center">
	    <button type= "submit" class= "btn btn-primary">Register</button>
	    </div>
	  </div>
</form>
</div>
</div>
</div>
</div>
</div>
<%@include file="component/footer.jsp"%>
</body>
</html>