<%@page import="travelClouds.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet” type=”text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<%

   DBConnection dbCon = new DBConnection();
   Connection conn = dbCon.getConnection();
   if(conn==null){
	   
	   out.print("Connection failed");
	   
   }else{
	   
	   out.print("COnnection Success");
   }
   


%>


</body>
</html>