<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="P1.*" %>
    <%@ page import="java.util.*" %>
    <% 
    Connect o1= new Connect();
    String pname=request.getParameter("pname");
    ArrayList<Products>arr=o1.getAllProducts(pname);
    String s="<ul>";
    for(int i=0;i<arr.size();i++){
    	Products p=(Products)arr.get(i);
    	s+="<li>"+p.getTitle()+"</li>";
    }
    s+="</ul>";
    out.println(s);
    %>
    