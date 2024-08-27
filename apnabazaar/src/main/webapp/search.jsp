<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" data-toggle="collapse" id="navbarSupportedContent" aria-label="Toggle navigation">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" data-toggle="collapse" id="navbarSupportedContent" aria-label="Toggle navigation">
    <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
  </div>
</nav>
 </body>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#search").keyup(function(){
    var pname=this.val();
    $(this).hide();
    $.ajax({
        type: "get",
        url: "search1.jsp?pname="+pname, //this is my servlet
        success: function(data){      
                $('#msg').html(data);
        }
    });
  });
});
</script>
</html>