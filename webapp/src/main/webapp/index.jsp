<h1> Hello Dear Students !!, Welcome to DevOps Project-2 !! </h1>
<h2> By Mr.Hari from Saidemy </h2>
<h2> It's time to start the DevOps Project-2 by Mr.Hari!! </h2>
<body> 

	<p>   Hello Bro !! How are you ! </p>

</body>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
  
<!--    
Exercise 7 from Exercises: Servlet and JSP Review
from Core Servlets and JSP Exercises.
-->
  
<HTML>
<HEAD>
  <TITLE>Color Testing</TITLE>
</HEAD>
  
<%
 
String bgColor = "BLUE";
String myColor = request.getParameter("color");
 
if (myColor != null){
myColor = myColor;
}
else{
myColor = bgColor;
}
 
%>
  
<BODY BGCOLOR="<%= myColor %>">
 
<H2 ALIGN="CENTER">Color Testing</H2>
  
<form>
            <input type="text" name="color" size="25">
            <p></p>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>   
 
</BODY>
</HTML>



