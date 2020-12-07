<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title> Settings</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<style media="all" type="text/css">
@import "css/AdminPanel.css";  
</style>
</head>
<body>
<div id="main">
  <div id="header"> <a href="#" class="logo"><img src="images/img/logo.gif" width="101" height="29" alt="" /></a>
    <ul id="top-navigation">
      <li><span><span><a href="/Suspicious-Email-Detection/AdminPanel.jsp">Home page</a></span></span></li>
      <li ><span><span><a href="/Suspicious-Email-Detection/Admin_SuspiciousUsers.jsp">Suspicious Users</a></span></span></li>
      <li class="active"><span><span>Settings</span></span></li>
    </ul>
  </div>
  <div id="middle">
    <div id="left-column" >
      
      </div>
    <div id="center-column">
      <div class="top-bar"> 
        <h1>Users list</h1>
        
      </div>
      <br />
      <div class="select-bar">
        <label>
        <input type="text" name="textfield" />
        </label>
        <label>
        <input type="submit" name="Submit" value="Search" />
        </label>
      </div>
     
    <div id="right-column"> 
      <strong class="h"><a href="/Suspicious-Email-Detection/WEB-INF/Login.jsp">Loge Out</a></strong>
    </div>
  </div>   
  </div>
</div>
</body>
</html>
    