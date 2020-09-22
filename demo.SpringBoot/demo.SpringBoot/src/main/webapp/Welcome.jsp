<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="jumbotron">
  <h1 class="display-4">Welcome In Our WebSite</h1>
</div>
<form action="saveData">
<div class="container">
  <div class="form-group">
    <label for="firstname">First Name</label>
    <input type="text" class="form-control"  autocomplete="off" id="firstname" name="name" aria-describedby="emailHelp" placeholder="please enter first name.........">
  </div>
  <div class="form-group">
    <label for="lastname">Last Name:</label>
    <input type="text" autocomplete="off" class="form-control" name="lname" id="lastname" placeholder="please enter last name.......">
  </div>
  <div class="form-group">
    <label for="email">email:</label>
    <input type="email" class="form-control" autocomplete="off" required="required" name="email" id="email" placeholder="please enter email.......">
  </div>
  <div class="form-group">
    <label for="pass">Password:</label>
    <input type="password" class="form-control" autocomplete="off"  name="password" id="pass" placeholder="please enter password...........">
    <span id="wrongpass"></span>
  </div>
  <div class="form-group">
    <label for="country">Country:</label>
    <input type="text" class="form-control" name="country"  autocomplete="off" id="country" placeholder="please enter country......">
  </div>
  <button type="submit" class="btn btn-primary" id="butid">Submit</button>
  </div>
</form>
</body>
</html>