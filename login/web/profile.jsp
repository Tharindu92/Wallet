<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>UserProfile</title>
<style type="text/css">
body {
	background-color: rgba(255,204,0,1);
}
#logo {
	position: relative;
	left: 5%;
	top: 27px;
	width: 246px;
	height: 258px;
	z-index: 1;
}
#Profile_Name {
	position: absolute;
	left: 330px;
	top: 227px;
	width: 90%;
	height: 51px;
	z-index: 2;
	background-color: rgba(0,153,255,0);
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 36px;
}
#log_outlayout {
	position: absolute;
	left: 1001px;
	top: 233px;
	width: 57px;
	height: 24px;
	z-index: 3;
}
#Credit_lst {
	position: absolute;
	left: 908px;
	top: 235px;
	width: 56px;
	height: 23px;
	z-index: 4;
}
#Debit_lst {
	position: absolute;
	left: 813px;
	top: 236px;
	width: 56px;
	height: 24px;
	z-index: 5;
}
#logout {
	position: absolute;
	left: 90%;
	top: 175px;
	width: 20%;
	height: 22px;
	z-index: 6;
	padding-left: 6px;
}
</style>
<style type="text/css">
#About {
	position: absolute;
	left: 6%;
	top: 340px;
	width: 262px;
	height: 31px;
	z-index: 7;
	font-size: 24px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
#Name {
	position: absolute;
	left: 6%;
	top: 393px;
	width: 90%;
	height: 20px;
	z-index: 8;
	font-size: 16px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-weight: bold;
}
#Email {
	position: absolute;
	left: 6%;
	top: 432px;
	width: 90%;
	height: 20px;
	z-index: 10;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
#CompanyName {
	position: absolute;
	left: 6%;
	top: 512px;
	width: 90%;
	height: 21px;
	z-index: 11;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
#apDiv1 {
	position: absolute;
	left: 6%;
	top: 472px;
	width: 90%;
	height: 19px;
	z-index: 12;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
#Home {
	position: absolute;
	left: 50%;
	top: 175px;
	width: 20%;
	height: 24px;
	z-index: 13;
}
#Creditlist {
	position: absolute;
	left: 80%;
	top: 175px;
	width: 20%;
	height: 22px;
	z-index: 14;
	padding: 0px;
}
#Debitlist {
	position: absolute;
	left: 70%;
	top: 175px;
	width: 20%;
	height: 24px;
	z-index: 15;
}
#apDiv2 {
	position: absolute;
	left: 55%;
	top: 175px;
	width: 20%;
	height: 26px;
	z-index: 16;
}
#apDiv3 {
	position: absolute;
	left: 416px;
	top: 170px;
	width: 506px;
	height: 37px;
	z-index: 17;
}
#menubar {
	position: absolute;
	left: 90%;
	top: 13px;
	width: 164px;
	height: 36px;
	z-index: 6;
}
</style>

</head>

<body>
<div id="logo"><img src="Untouchables Logo.jpg" width="245" height="256" /> </div>

<div id="Profile_Name">${user.getFullName()}</div>

<div id="About">About</div>

   
<div id="Name">Name: <strong> ${user.getUsername()}</strong></div>
<div id="Email"><strong>Email: ${user.getemail()}<strong></div>
<div id="CompanyName"><strong>Company Name:${user.getcompanyName()}</div>
<div id="apDiv1"><strong>Company Address:${user.getcompanyAddress()} <strong></div>
<div id="menubar">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="profile.jsp">Home</a></li>
    <li><a href="creditList.jsp">Credit List</a></li>
    <li><a href="debitList.jsp">Debit List</a></li>
    <li><a href="transaction.jsp">Transaction</a></li>
    <li><a href="index.jsp">Log out</a></li>
  </ul>
</div>
<div id =" "
</body>
</html>
