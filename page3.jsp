<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("username");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "grizzly";
String userid = "root";
String password = "Sister@0709";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
       <head>
              <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
              
              <style>
                     #navbar
                     {
                           background-color: #F2F2F2;
                           height:120px;
                           width:auto;
                     }
                     
                     #image
                     {
                           padding-left:10px;
                           padding-top:5px;
                           float:left;
                     }
                     
                     .button
                     {
                           border-radius:12px;
                           margin-left:1200px;
                           margin-top: 40px;
                           height:40px;
                           width:80px;
                           background-color:blue;
                           color:white;
                     }
                     
                     #search
                     {
                           border-radius:25px;
                           margin-left:80px;
                           width:200px;
                           margin-top:0px;
                           height:20px;
                           background:white url(file:///D:/agil/grizzly-store-admin-web/naya.png) right center no-repeat;
                     }
                     
                     #profile
                     {
                           width:280px;
                           height:500px;
                           background-color:#F2F2F2;
                           margin-top:20px;
                           float:left;
                     }
                     
                     #edit
                     {
                           background:#CDCDCD;
                           width:260px;
                           margin-left:10px;
                           margin-top:10px;
                     }
                     
                     #text
                     {
                           color:white;
                           font-size:23px;
                     }
                     
                     #text2
                     {
                           color:white;
                           font-size:16px;
                     }
                     
                     #user
                     {
                           height:130px;
                           width:130px;
                           margin-left:70px;
                           background:#CDCDCD;
                     }
                     
                     #wrapper
                     {
                           position:relative;
                     }
                     
                     
                     
                     #product
                     {
                           margin-left:600px;
                     }
                     
              </style>
       </head>
       
       <body>
              <div id="navbar">
                     <div id="image">
                           <img src="file:///D:/agil/grizzly-store-admin-web/productimage.png" height="100px" width="400px" id="image">
                     </div>
                     
                     <div id="logout">
                          <form action="index.html">
                          	<input type="submit" value="logout" class ="button">
                          </form>
                     </div>
                     
                     
                     <input type="text" id="search">
              </div>
              <div id="wrapper">
                     <div id="profile">
                           <br/>
                           <div id="edit">
                                  <p><span id="text">PROFILE</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span id="text2"><button>Edit</button></span></p>
                           </div>
                     
                           <br/>
                           <div id="user">
                                  </div>
                     <br/>
                           <div id="content">
                                  
                                  <% String name= request.getParameter("username"); %>
                                  <h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<% out.print(name); %></h2>
                                  <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;765436</p>
                                  <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sr.Admin</p>
                           </div>
                     </div>
                     <div id="product">
                     <br/>
                           <ul>
                                  <li>Product</li>
                                  <li>Vendor</li>
                           </ul>
                           <h1>Retrieve data from database in jsp</h1>
							<table border="1">
							<tr>
							<td>ProductID</td>
							<td>Category</td>
							<td>Pname</td>
							<td>Description</td>
							<td>Price</td>

							</tr>
							<%
							try{
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							statement=connection.createStatement();
							String sql ="select * from product";
							resultSet = statement.executeQuery(sql);
							while(resultSet.next()){
							%>
							<tr>
							<td><%=resultSet.getString("Product_id") %></td>
							<td><%=resultSet.getString("Category") %></td>
							<td><%=resultSet.getString("PName") %></td>
							<td><%=resultSet.getString("Description") %></td>
							<td><%=resultSet.getString("Price") %></td>
							</tr>
							<%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
							</table>           
                     </div>
                     </div>
                     
       </body>
</html>
