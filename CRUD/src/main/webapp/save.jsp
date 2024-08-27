<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hibernate.dao.*" %>
<%@ page import="hibernate.model.*" %>
<%@ page import="hibernate.util.*" %>
<%
    int eid = Integer.parseInt(request.getParameter("eid"));
    String ename = request.getParameter("ename");
    double basic = Double.parseDouble(request.getParameter("basic"));
    Employee e1 = new Employee(eid, ename, basic);
    EmployeeDao obj = new EmployeeDao();
    obj.saveRecord(e1);    
    response.sendRedirect("report.jsp");
%>
