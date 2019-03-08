<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
                           background-color: #B3B3B3;
                           color:#030303;
                     }
                     
                     #search
                     {
                           border-radius:25px;
                           margin-left:80px;
                           width:200px;
                           margin-top:0px;
                           height:20px;
                     }
                     
                     #profile
                     {
                           width:280px;
                           height:710px;
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
                           margin-left:350px;
                           height:710px;
                           width:800px;
                           border-style : solid;
                           border-color : black;
                     }
                     #InsideProduct
                     {
                     	margin-top:20px;
                     	margin-left30px;
                     	float : right;
                     }
                     #add
                     {	
                     	border-radius : 25px;
                     	height:35px;
                     	width:78px;
                     	color:#030303;
                     	background-color : #343434;
                     	color:#FBFBFB;
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
                          	 <input type="submit" value = "logout" onclick="index.html" class="button" >
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
                                  <br/>
                                  <h2>ID : 765442</h2>
                                  <h2>Designation : Admin</h2>
                                  <h2>Office : Banglore</h2>
                           </div>
                     </div>
                     <br/>
                     <div id="product">
                     <br/>
                           <ul>
                                  <li><a href="page3.jsp">Product</a></li>
                                  <li>Vendor</li>
                           </ul>
                           <div id="InsideProduct" >
								 <form action="AddProduct" method="post">
                                  <label>Enter Product Id: &nbsp; &nbsp;</label><input type="text" name="name1">
                                  <br/>
                                   <br/>
                                  <label>Category : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </label><input type="text" name="name2">
                                  <br/>
                                   <br/>
                                  <label>PName : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  </label><input type="text" name="name3">
                                  <br/>
                                   <br/>
                                  <label>Description :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </label><input type="text" name="name4">
                                  <br/>
                                   <br/>
                                  <label>Price :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </label><input type="text" name="name5">
                                  <br/>
                                   <br/>
                                  <input type="submit" value="ADD" id="add">
                           </form>                           
                           </div>
                     </div>
                     </div>
                     
       </body>
</html>
