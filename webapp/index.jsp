<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to PhoneGuard</title>
<%@include file="component/allCss.jsp" %>
<style type="text/css">
.back-img{
background: url("img/logo-color.png");
width: 50%;
height: 80vh;
background-position: center center; 
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>


<div class = "container-fluid back-img text-center text-danger">
<h1 class="mt-3">Welcome to Phone Guard App</h1>
</div>
<%@include file="component/footer.jsp"%>
</body>
</html>