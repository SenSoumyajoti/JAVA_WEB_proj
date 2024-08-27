<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="P1.*" %>
    <%@ page import="java.util.*" %>
    <% 
    Connect o1= new Connect();
    ArrayList<String> arr= o1.getcategory();
    String category = "";
    category=request.getParameter("category");
    if(category==null){
    	category = "all";
    }
    ArrayList<Products> data=o1.getAllrecords(category);
    int row= data.size()/4;
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ApnaBazar</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
    
    <style>
        /* Custom styles for the navbar */
        .navbar-custom {
            background-color: #007bff; /* Navbar background color */
        }

        .navbar-custom .navbar-brand {
            color: #fff; /* Brand/logo text color */
        }

        .navbar-custom .navbar-nav .nav-link {
            color: #fff; /* Navbar link color */
        }

        .navbar-custom .navbar-nav .nav-link:hover {
            color: #ccc; /* Navbar link color on hover */
        }
        .card-title{
        font-size: 1.2rem; /* Font size for the card title */
    	margin-bottom: 5px;
    	overflow: hidden;
    	text-overflow: ellipsis;
    	white-space:nowrap;
        }
        .card-img-top {
   	 	width: 100%; /* Make the image fill the entire width of the card */
    	height: 50%;
    	object-fit: contain; /* Maintain aspect ratio */
    	border-bottom: 1px solid #ccc; /* Add a border to the bottom of the image */
		}
        .card{
       	width: 300px;
       	height:400px; /* Set the width of the card */
    	margin-bottom: 20px; /* Add margin around the card */
   		border: 1px solid #ccc; /* Add a border to the card */
   		border-radius: 10px; /* Add rounded corners to the card */
    	overflow: hidden; /* Hide overflow content */
   		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
   		margin : 20px;        
   		}
        .card-text{
        font-size: 1rem; /* Set the font size of the text */
    	color: #555; /* Set the text color */
   		margin-bottom: 10px;
   		overflow: hidden; /* Hide overflow content */
    	text-overflow: ellipsis; /* Display ellipsis for overflow content */
    	display: -webkit-box; /* Set display mode */
    	-webkit-line-clamp: 4; /* Limit the number of lines to show */
    	-webkit-box-orient: vertical; 
        }
        .card-body {
    	padding: 20px;
    	}
    	.btn-primary {
      	padding: 8px 20px; /* Adjust padding inside the button */
    	border-radius: 5px; /* Add rounded corners to the button */
    	text-decoration: none; /* Remove underline from the button */
    	transition: background-color 0.3s ease;/* Smooth transition for background color */
    	margin-bottom:5px;
    	}
    	.btn-primary:hover {
    	background-color: #0056b3; /* Darker background color on hover */
    	color: #fff; /* Change text color on hover */
		}
		.fa-solid fa-cart-shopping{
		size:
		}
		
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-md navbar-dark navbar-custom">
        <img class="navbar-brand" src="C:\Users\soumy\eclipse-workspace\apnabazaar">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp?category=all">Home</a>
                </li>
               <% for(int i=1;i<arr.size();i++){
            	   String s=(String)arr.get(i);
               %>
            	<a href="index.jsp?category<%=s%>" class="nav-link"><%=s%></a>
               <%}%>
               <a href="search.jsp" class="nav-link" >Search</a>
               <i class="fa-solid fa-cart-shopping"></i>
            </ul>
        </div>
    </nav>
    <table>
    <%
    int k=0;
    for (int i=0;i<row;i++){
    out.print("<tr>");
    	for(int j=0;j<4;j++){
    		out.print("<td>");
    		Products p=(Products)data.get(k);%>
     <div class="card" >
    <img src="<%=p.getImage() %>" class="card-img-top" alt="...">
    <div class="card-body text-center">
        <h5 class="card-title"><%=p.getTitle() %></h5>
        <p class="card-text"><%=p.getDescription() %></p>
        <a href="#" class="btn btn-primary">Add Cart</a>
    </div>
    <%out.print("</td>");
      k++;
      }
      out.print("</tr>");
      }
      %>
</div>
    </table>
</body>
</html>
