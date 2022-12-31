<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome voter</title>
</head>

<%@ include file="navbar.jsp"%>

<body>

<div class="form-container">
<form action="Vote" method="post">
<h6>Please fill required details:</h6>

<label for="voterNumber">Voter ID</label>
<br>
<input name="voterNumber" id="voterNumber" type="text">

<label for="party">Choose a party:</label>

<select name="party" id="party">
  <option value="Aam adami party">Aam Adami Party</option>
  <option value="BJP">BJP</option>
  <option value="Congress">Congress</option>
  <option value="BSP">BSP</option>
  <option value="CPI">CPI</option>
</select>


<button type="submit">Submit</button>
</form>
</div>

</body>
</html>