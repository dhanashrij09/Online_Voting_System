<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Registration</title>
</head>
<%@ include file="AdminNavbar.jsp"%>
<body>

<div class="form-container">

<form action="RegisterVoter" method="post">

<h6>Please fill required details:</h6>

<label for="uName">Name</label>
<br>
<input name="uName" id="uName" type="text">

<label for="pNumber">Phone Number</label>
<br>
<input name="pNumber" id="pNumber" type="number">

<label for="email">Email</label>
<br>
<input name="email" id="email" type="email">

<label for="address">Address</label>
<br>
<textarea name="address" id="address" rows="4" cols="8"></textarea>

<label for="voterNumber">Voter Number</label>
<br>
<input name="voterNumber" id="voterNumber" type="text">

<label for="dob">Date of Birth</label>
<br>
<input name="dob" id="dob" type="date">
<br>
<button type="submit">Register</button>
</form>
</div>

</body>
</html>