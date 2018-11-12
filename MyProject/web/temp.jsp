<%-- 
    Document   : insert_process
    Created on : 10 Nov, 2018, 1:23:35 PM
    Author     : Milan
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("usrname");
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String dob=request.getParameter("dob");
String email=request.getParameter("email");
String prog_lang=request.getParameter("lang");
String s_id1="";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();

request.getRequestDispatcher("index.html").include(request, response);  
          
        HttpSession ss=request.getSession();  
        {  
        s_id1=(String)session.getAttribute("s_id");  
        }
st.executeUpdate("insert into biodata(name,fname,mname,dob,email,prog_lang,ID)values('"+name+"','"+fname+"','"+mname+"',"
        + "'"+dob+"','"+email+"','"+prog_lang+"','"+s_id1+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>