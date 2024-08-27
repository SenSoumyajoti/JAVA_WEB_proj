
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Crud app</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    .topnav {
        width: 100%;
        background-color: #333;
        overflow: hidden;
        display: flex;
        align-items: center;
        padding: 10px;
    }
    .topnav .logo {
        font-size: 24px;
        color: #f2f2f2;
        font-weight: bold;
        margin-right: 20px;
    }
    .topnav a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }
    .topnav a.active {
        background-color: #4CAF50;
        color: white;
    }
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px #0000001a;
        width: 300px;
        text-align: left;
        align:center;
    }
    input[type="number"],
    input[type="text"],
    input[type="number"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 5px 0 10px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    h1 {
        font-size: 24px;
        color: #333;
        margin-bottom: 20px;
        padding: 20px;
        text-align: center;
    }
</style>
</head>
<body>

<div class="topnav">
  <div class="logo">CRUD</div>
  <a class="active" href="registration.jsp">Register</a>
  <a href="report.jsp">report</a>
  <a href="#about">About</a>
</div>
<h1>Employee Form</h1>
<form name="f1" action="save.jsp" method="post" align="center">
    <label for="eid">Employee ID</label><br>
    <input name="eid" type="number" id="eid"><br><br>
    <label for="ename">Employee Name</label><br>
    <input name="ename" type="text" id="ename"><br><br>
    <label for="basic">salary</label><br>
    <input name="basic" type="number" id="basic"><br><br> <br>

    <input type="submit" value="submit">
</form>

</body>
</html>
