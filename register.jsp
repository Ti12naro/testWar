<html>
  <head>
    <title>Register</title>
  </head>
  <body bgcolor="cyan">
    
    <%@ page language="java" import="java.sql.*" %>
    <%
      String s1,s2;
       
      boolean f=false;
      s1=request.getParameter("uname");
      s2=request.getParameter("pass");
      Connection con=null;
      Statement stmt=null;
     
     try{
       Class.forName("com.mysql.jdbc.Driver");
       }
      catch(ClassNotFoundException e){
       out.println("required class not found");
       } 
      try{
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/war_check","root","mysql");
        stmt=con.createStatement();
         String u="insert into reginfo(username,password) values('"+s1+"','"+s2+"')"; 
        stmt.executeUpdate(u);
       }
      catch(SQLException e){
        out.println("exception occured");
       }
     
       %>
     
  <form method="get">
  <center>
     <br>
     <br>
     <h3>
	 <%
	out.println("Welcome "+s1+" ... You are registered.");
	 %>
	 </h3>
     <br>
      <input type="button" value="Back" onclick="history.back()">
	  </center>
  </form>
 </body>
</html> 	         
