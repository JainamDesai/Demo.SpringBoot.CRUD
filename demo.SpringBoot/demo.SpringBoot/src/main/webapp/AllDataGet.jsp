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
<h1>Save Record</h1>
</div>
<h2>Website Data:</h2><br>
<h4><p>Name is : ${obj.name}</p></h4><br>
<h4><p>Last Name is: ${obj.lname}</p></h4><br>
<h4><p>Email is: ${obj.email}</p></h4><br>
<h4><p>Password is: ${obj.password}</p></h4><br>
<h1>Your Data Save Successfully..............Thank you</h1>
<form action="updateData">
<label>Update By Id:</label><input type="num" name="id"><br>
<button type="submit" value="submit">SUBMIT</button>
</form>
<form action="deleteDate">
<label>Delete by Id:</label><input type="num" name="id"><br>
<button type="submit" value="submit">SUBMIT</button>
</form>
</body>
</html>