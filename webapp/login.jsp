<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="component/allCss.jsp" %>
</head>
<body style="background-color: #d0d6d1">
<%@include file="component/navbar.jsp" %>
<div class="conatiner-fluid">
	<div class="row p-2">
	<div class="col-md-6 offset-md-3">
	<div class="card">
	<div class="card-body">
	<h4 class="text-center text-success">Login Page</h4>
	<% 
	String inavlidMsg=(String) session.getAttribute("inavlidMsg");
	%>
	<%
	if (inavlidMsg != null){
	%>
		<p class="text-danger text-center"><%=inavlidMsg%></p>
	<%
	session.removeAttribute("inavlidMsg");
	}
	%>
	<% 
	String logMsg=(String) session.getAttribute("logMsg");
	%>
	<%
	if (logMsg != null){
	%>
		<p class="text-danger text-center"><%=logMsg%></p>
	<%
	session.removeAttribute("logMsg");
	}
	%>
	<form action="login" method="post">

	  <div class="form-group">
	    <label for="exampleFormControlInput1">Email address</label>
	    <input name="email" type="email" class="form-control" id="exampleFormControlInput1" aria-describedby="emailHelp" name="email">
	  </div>
	  
	  <div class="form-group">
	    <label for="exampleInputPassword">Password</label>
	    <input name="password" type="password" class="form-control" id="exampleInputPassword" >
	    <div class="text-center">
	    <button type= "submit" class= "btn btn-primary">Login</button>
	    </div>
	  </div>
</form>
</div>
</div>
</div>
</div>
</div>
<div style="margin-top: 130px">
<%@include file="component/footer.jsp"%>
</div>
</body>
</html>