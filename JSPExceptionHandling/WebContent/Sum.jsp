<%@page import="java.sql.SQLException"%>
<%-- <%@ page errorPage="Error.jsp"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JavaLive JSPExceptionHendling</title>
</head>
<body>
  <% int x=5, y=10;
        if (x == 10)
   {
      //throw new RuntimeException("Error condition!!!");//It leads to calling 'Error.jsp'
   }
   else if(x==5){
	   throw new SQLException("This is SQLException.");//It leads to calling 'SQLException.jsp'
   }else if(x>y){//Condition for ArithmeticException when y=0. It leads to calling 'ArithmeticException.jsp'
 	   x=x/y;
   } 
 %>
 <br/>
The answer of division operation is <%= x %>

<%-- <jsp:forward page="Display1.jsp"/> <!-- It leads to calling 'ErrorPage404.jsp'--> --%> 


</body>
</html>