<%@ page language="java" %>

<html>
<head>
<title>Multiplication Table Generator</title>
<meta charset="UTF-8">

<style>

body{
    font-family: Arial, sans-serif;
    background:#f8f5f2;   /* off-white background */
    text-align:center;
    margin:0;
    padding:0;
}

/* main container */
.container{
    background:white;
    width:450px;
    margin:100px auto;
    padding:35px;
    border-radius:12px;
    border:3px solid #800000;
    box-shadow:0 10px 20px rgba(0,0,0,0.1);
}

/* headings */
h1{
    color:#800000;
}

h2{
    color:#5c0000;
}

/* input field */
input[type=number]{
    padding:10px;
    width:220px;
    font-size:16px;
    border:2px solid #800000;
    border-radius:6px;
}

/* button */
button{
    padding:10px 22px;
    margin-top:15px;
    font-size:16px;
    background:#800000;
    color:white;
    border:none;
    border-radius:6px;
    cursor:pointer;
}

button:hover{
    background:#5c0000;
}

/* table */
table{
    margin:25px auto;
    border-collapse:collapse;
    width:260px;
}

td{
    border:1px solid #800000;
    padding:10px;
    font-size:18px;
    text-align:center;
}

/* table header */
.header{
    background:#800000;
    color:white;
    font-weight:bold;
}

/* alternating rows */
tr:nth-child(even){
    background:#f5e6e6;
}

/* hover effect */
tr:hover{
    background:#f0d9d9;
}

</style>

</head>

<body>

<div class="container">

<h1>Multiplication Table Generator</h1>

<form method="post">
<input type="number" name="num" placeholder="Enter a number" required>
<br><br>
<button type="submit">Generate Table</button>
</form>

<%
String n = request.getParameter("num");

if(n != null)
{
int num = Integer.parseInt(n);
%>

<h2>Table of <%= num %></h2>

<table>

<tr class="header">
<td>Expression</td>
<td>Result</td>
</tr>

<%
for(int i=1;i<=10;i++)
{
%>

<tr>
<td><%= num %> x <%= i %></td>
<td><%= num*i %></td>
</tr>

<%
}
%>

</table>

<%
}
%>

</div>

</body>
</html>
