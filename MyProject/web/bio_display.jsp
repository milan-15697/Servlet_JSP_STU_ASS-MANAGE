<%-- 
    Document   : insert_process
    Created on : 10 Nov, 2018, 1:23:35 PM
    Author     : Milan
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

</head>

<body onload="startTime()" >

    
    <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<button class="login100-form-btn">
								<a href="LogoutServlet"  >Logout</a>
							</button>
						</div>
</div>
    
    
<div align="right" id="txt"> </div>

<marquee scrollamount="10" style="border:#B9CC20 3px SOLID" onmouseover="this.stop();" onmouseout="this.start();" >Latest Announcements are being displayed here!!</marquee>



<p><img  src="images\clever-owl.png" width="77" height="77" align="right"></p>
<a href="MAIN.html">
<img onmouseover="expand(this)" onmouseout="notexp(this)" src="images\amplifyworks-logo.svg" width="84"height="84"></a>

<font face="sans-serif"  size="12" color="#24CBF0">Your Bio: </font>
<%

String s_id1="";
try
{
Class.forName("com.mysql.jdbc.Driver");

//request.getRequestDispatcher("index.html").include(request, response);  
          
        HttpSession ss=request.getSession();  
        {  
        s_id1=(String)session.getAttribute("s_id");  
        }
        
String query="select * from biodata where ID="+s_id1;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(query);


while(rs.next())
{

%>

</br></br>

<br> Your Details: <br><br>

Father's Name: <%=rs.getString("fname") %> <br><br>
Mother's Name: <%=rs.getString("mname") %><br><br>
Date Of Birth: <%=rs.getString("dob") %><br><br>
Email Address: <%=rs.getString("email") %>
</br><br><br><br><br>
 <%
}

}
catch(Exception e)
{
out.print("No Data Available");

}
%>

<a onmouseover="color(this)" onmouseout="default1(this)" href="contactfinal.html">Missing/Update Bio? Click Here!!</a>
