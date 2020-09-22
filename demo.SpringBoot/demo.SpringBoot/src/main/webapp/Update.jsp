<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="jumbotron">
<h1>Updated Data:</h1>
</div>
<form action="storeData">

    <label >Id:</label>
    <input type="number" class="form-control" value="${obj.id}" id="id" name="id" >
<br>
  
    <label >Name:</label>
    <input type="text" class="form-control" value="${obj.name}" id="name" name="name"  placeholder="please update your name.........">
  <br>

    <label >LastName:</label>
    <input type="text" class="form-control" value="${obj.lname}" id="LastName" name="lname" placeholder="please update your lastname...........">
<br>
  <label >Email:</label>
    <input type="text" class="form-control" id="email" value="${obj.email}" name="email" placeholder="please update your email...........">
 <br> 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>