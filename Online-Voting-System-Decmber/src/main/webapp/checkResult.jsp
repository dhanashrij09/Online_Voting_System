<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.DriverManager"%>    
<%@ page import = "java.sql.ResultSet"%>   
<%@ page import = "java.sql.Statement"%>     
<%@ page import = "java.sql.Connection"%>  
<%@ page import = "java.sql.PreparedStatement"%>      
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet" type="text/css" href="styles.css">

<%

String a[]= new String[100];

Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVotingDbDec","root","Dhanu@09");

PreparedStatement preparedStatement = con.prepareStatement("select party, count(party) as c from vote group by party");
ResultSet rs = ((java.sql.Statement) preparedStatement).executeQuery("select party, count(party) as c from vote group by party");

int i = 0;
while(rs.next()){
	     String temp = rs.getString("c");
	    int temp2 = Integer.valueOf(temp)-1;
	    a[i] = Integer.toString(temp2);
	i++;
}
%>

</head>
<%@ include file="AdminNavbar.jsp"%>
<body>

<div class="checkTable">
<table>
<tr>
<th>
Parties
</th>
<th>
Name
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img src="https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2017/01/18/Pictures/_5c179c46-dd4d-11e6-a538-54bd197a5a1b.png" alt="AAP">
</td>
<td>Aam Adami Party</td>
<td><%=a[0]%></td>
</tr>

<tr>
<td>
<img src="https://tse2.mm.bing.net/th?id=OIP.PIPKlA3oDSWqVKfTefJ-GQHaHI&pid=Api&P=0" alt="BJP">
</td>
<td>BJP</td>
<td><%=a[1]%></td>
</tr>

<tr>
<td>
<img src="http://media2.intoday.in/indiatoday/images/stories/bsp---_146504296977_647x404_060416055635.jpg" alt="BSP">
</td>
<td>BSP</td>
<td><%=a[2]%></td>
</tr>

<tr>
<td>
<img src="https://tse2.mm.bing.net/th?id=OIP.isp_sM27LSEfTE-jmCW58AHaFS&pid=Api&P=0" alt="Congress">
</td>
<td>Congress</td>
<td><%=a[3]%></td>
</tr>

<tr>
<td>
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/CPI-banner.svg/1200px-CPI-banner.svg.png" alt="CPI">
</td>
<td>CPI</td>
<td><%=a[4]%></td>
</tr>

</table>
</div>

</body>
</html>