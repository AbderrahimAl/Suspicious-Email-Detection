<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title> Suspicious Users</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<style media="all" type="text/css">
@import "css/AdminPanel.css";  
</style>
</head>
<body>
<div id="main">
  <div id="header"> <a href="#" class="logo"><img src="images/img/logo.gif" width="101" height="29" alt="" /></a>
    <ul id="top-navigation">
      <li ><span><span><a href="/Suspicious-Email-Detection/AdminPanel.jsp">Home page</a></span></span></li>
      <li class="active"><span><span>Suspicious Users</span></span></li>
      <li><span><span><a href="/Suspicious-Email-Detection/Admin_Settings.jsp">Settings</a></span></span></li>
    </ul>
  </div>
  <div id="middle">
    <div id="left-column" > 
      </div>
    <div id="center-column">
      <div class="top-bar"> 
        <h1>Suspicious Users list</h1>
        
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
      <div class="table"> <img src="images/img/bg-th-left.gif" width="8" height="7" alt="" class="left" /> <img src="images/img/bg-th-right.gif" width="7" height="7" alt="" class="right" />
        <table class="listing" cellpadding="0" cellspacing="0">
          <tr>
            <th></th>
            <th>User Name</th>
            <th class="first" width="177">User Email</th>           
            <th>Contact</th>           
            
            <th class="last">Block</th>
          </tr>
            
          <tr class="bg">
            <td><img src="images/img/login-icon.gif" width="16" height="16" alt="login" /></td>
            <td class="first style2"> Name 0 </td>
            <td class="first style2"> Email 0 </td>
            <td><img src="images/img/edit-icon.gif" width="16" height="16" alt="edit" /></td>            
            
            <td class="last"><img src="images/img/hr.gif" width="16" height="16" alt="" /></td>
          </tr>
          <tr>
            <td><img src="images/img/login-icon.gif" width="16" height="16" alt="login" /></td>
            <td class="first style2">Name 1 </td>
            <td class="first style2"> Email 1 </td>            
            <td><img src="images/img/edit-icon.gif" width="16" height="16" alt="edit" /></td>            
            <td class="last"><img src="images/img/hr.gif" width="16" height="16" alt="" /></td>
          </tr>
          <tr class="bg">
            <td><img src="images/img/login-icon.gif" width="16" height="16" alt="login" /></td>
            <td class="first style2">Name 2 </td>
            <td class="first style2"> Email 2</td>           
            <td><img src="images/img/edit-icon.gif" width="16" height="16" alt="edit" /></td>                        
            <td class="last"><img src="images/img/hr.gif" width="16" height="16" alt="" /></td>
          </tr>
          <tr>
            <td><img src="images/img/login-icon.gif" width="16" height="16" alt="login" /></td>
            <td class="first style2">Name 3 </td>
            <td class="first style2"> Email 3</td>
            <td><img src="images/img/edit-icon.gif" width="16" height="16" alt="edit" /></td>            
            <td class="last"><img src="images/img/hr.gif" width="16" height="16" alt="" /></td>
          </tr>
          <tr class="bg">
            <td><img src="images/img/login-icon.gif" width="16" height="16" alt="login" /></td>
            <td class="first style2">Name 4</td>
            <td class="first style2"> Email 4 </td>
            <td><img src="images/img/edit-icon.gif" width="16" height="16" alt="edit" /></td>
            <td class="last"><img src="images/img/hr.gif" width="16" height="16" alt="" /></td>
          </tr>
        </table>
        <div class="select"> <strong>Other Pages: </strong>
          <select>
            <option>1</option>
          </select>
        </div>
      </div>     
    </div>
    <div id="right-column"> 
      <strong class="h"><a href="/Suspicious-Email-Detection/Login.jsp">Logout</a></strong>
    </div>
  </div>   
</div>
</body>
</html>
    