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
 <% int x=11, y=1;
        if (x == 10)
   {
      throw new RuntimeException("Error condition!!!");
   }else if(x>y){
	   x=x/y;
   } 
 %>
<%--  Server Version: <%= application.getServerInfo() %><br>
Servlet Version: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %>
JSP Version: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %> <br> --%>
<jsp:forward page="display.jsp"/> 

<br/>
The sum is <%= x %>
</body>
</html>