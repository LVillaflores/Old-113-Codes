<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage = "error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import = "com.ust.iics.util.PDFCreatorHelper" %>


 
<jsp:useBean id="CalcBean" class = "com.ust.iics.ComputeBean" scope = "page" />

<jsp:setProperty property="name" name="CalcBean"/>
<jsp:setProperty property="add" name="CalcBean"/>
<jsp:setProperty property="cont" name="CalcBean"/>
<jsp:setProperty property="room" name="CalcBean"/>
<jsp:setProperty property="guest" name="CalcBean"/>
<jsp:setProperty property="total" name="CalcBean"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room Reservation</title>
</head>
<body>
<%@include file = "/header.html" %>

<p>Name : <%=CalcBean.getName() %>
<p>Address : <%=CalcBean.getAdd() %>
<p>Contact No. : <%=CalcBean.getCont() %>
<p>Room Type : <%=CalcBean.getRoom() %>
<p>Number of Guests : <%=CalcBean.getGuest() %>
<%CalcBean.computePay(); %>
<%CalcBean.computeExcess(); %>
<%CalcBean.computeTotal(); %>
<p>Total : <%=CalcBean.getTotal()%>

<%if (CalcBean.getGuest() == 0) {
	throw new RuntimeException("Number of Guests cannot be Zero");
 }%>

<%PDFCreatorHelper.generatePDF(CalcBean); %>

<%@include file = "/footer.html" %>
</body>
</html>