<%-- 
    Document   : index
    Created on : Sep 24, 2014, 2:21:47 PM
    Author     : rnavagamuwa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wallet_Home</title>
    </head>
     <body>
    <style type="text/css">
@import url("monsieurladoulaise_regular/stylesheet.css");
@import url("monsieurladoulaise_regular/stylesheet.css");
@import url("RobotoSlab_Bold/stylesheet.css");

#apDiv1 {
	position: absolute;
	left: 2.5%;
	top: 25px;
	width: 397px;
	height: 205px;
	z-index: -1;
}
 body {  
        	background-color: rgba(229,181,11,1);
}
#apDiv2 {
	position: absolute;
	left: 25%;
	top: 24px;
	width: 682px;
	height: 100px;
	z-index: 1;
	font-family: "monsieurladoulaise regular";
	font-size: 100px;
}
.fancy {
	font-family: "monsieurladoulaise regular";
}
#loginButton{
}
#apDiv3 {
	position: absolute;
	left: 312px;
	top: 302px;
	width: 75px;
	height: 33px;
	z-index: 2;
	font-size: 18px;
}
#apDiv4 {
	position: absolute;
	left: 527px;
	top: 359px;
	width: 126px;
	height: 30px;
	z-index: 3;
}
#apDiv5 {
	position: absolute;
	left: 391px;
	top: 248px;
	width: 256px;
	height: 35px;
	z-index: 3;
}
#apDiv6 {
	position: absolute;
	left: 393px;
	top: 301px;
	width: 237px;
	height: 37px;
	z-index: 4;
}
#apDiv7 {
	position: absolute;
	left: 447px;
	top: 330px;
	width: 65px;
	height: 27px;
	z-index: 4;
}
#apDiv8 {
	position: absolute;
	left: 309px;
	top: 250px;
	width: 79px;
	height: 26px;
	z-index: 5;
	font-size: 18px;
}
#apDiv9 {	position: absolute;
	left: 180px;
	top: 254px;
	width: 195px;
	height: 26px;
	z-index: 5;
	font-family: Tahoma, Geneva, sans-serif;
}
#apDiv10 {
	position: absolute;
	left: 290px;
	top: 357px;
	width: 181px;
	height: 26px;
	z-index: 6;
}
#apDiv11 {	position: absolute;
	left: 318px;
	top: 357px;
	width: 181px;
	height: 26px;
	z-index: 6;
}
#apDiv12 {	position: absolute;
	left: 517px;
	top: 358px;
	width: 353px;
	height: 53px;
	z-index: 3;
}
</style>
</head>

<body>
<div id="apDiv1"><img src="Untouchables Logo.jpg" width="206" height="183" alt="TheUntouchables" /></div>
<div id="apDiv2">The Untouchables</div>

<div id="apDiv8">Username </div>

<form id="form3" name="form3" method="post" action="">
</form>
<label for="textfield"></label>

<div id="apDiv3">Password </div>
<form name="login form" action = "loginServ"  method="post">

</form>
<form name="login form" action = "loginServ"  method="post">
   <div id="apDiv7">
 <input type="submit" name="login" id="login" value="Login" />
 </div>
  <div id="apDiv5">
 <label for="textfield4"></label>
 <input type="text" width="250px" name="uname" id="uname" />
</div>
    <div id="apDiv6">
    <label for="textfield3"></label>
    <input type="password" width=250px name="password" id="password" />
</div>
   
</form>
<form name="login form" action = "createNew.jsp"  method="">
<div id="apDiv10">
    <input type="submit" name="createNew" id="createNew" value="Create new account" />
</div>

</form>
<form name="login form" action = "forgotPass.jsp"  method="">
<div id="apDiv4">
  <input type="submit" name="forgotPassword" id="forgotPassword" value="Forgot Password?" />
</div>
</form>
</body>


</html>
