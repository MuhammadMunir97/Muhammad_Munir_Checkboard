<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Insert title here</title>

</head>
<body>

<%
String width = request.getParameter("width");
String height = request.getParameter("height");
int boardWidth = 0;
int boardHeight = 0;

try{
	 boardWidth = Integer.parseInt(width);
	 boardHeight = Integer.parseInt(height);
}catch (Exception e){
	out.write("Invalid Number entered");
}

%>

<div class="center">
<h1> Checkboard: <%out.println(boardWidth);%>w X <%out.println(boardHeight); %>h </h1>

<% for(int  ht= 0; ht < boardHeight; ht++) { %>
	<div>
	<% for(int wd = 0; wd < boardWidth; wd++) { %>
    <%  if(((ht + wd) % 2) == 0  ) {%>
       <div class="Box purpleBox"></div>
       <%} else { %>
       <div class="Box blueBox"></div>
       <%} %>
      <% } %>
      </div>
    <% } %>
</div> 
 
</body>
</html>