<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<SCRIPT language=Javascript>
       <!--
       function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : evt.keyCode;
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
       //-->
    </SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Transaction</title>
<style type="text/css">
body {
	background-color: rgba(229,181,11,1);
}
#logo {
	position: absolute;
	left: 30px;
	top: 27px;
	width: 246px;
	height: 258px;
	z-index: 1;
}
#Profile_Name {
	position: absolute;
	left: 308px;
	top: 228px;
	width: 439px;
	height: 51px;
	z-index: 2;
	background-color: rgba(0,153,255,1);
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
#menubar {
	position: absolute;
	left: 90%;
	top: 13px;
	width: 164px;
	height: 36px;
	z-index: 6;
}
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#About {
	position: absolute;
	left: 40px;
	top: 340px;
	width: 262px;
	height: 31px;
	z-index: 7;
	font-size: 24px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
#Name {
	position: absolute;
	left: 41px;
	top: 393px;
	width: 262px;
	height: 20px;
	z-index: 8;
	font-size: 16px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-weight: bold;
}
#Full_Name {
	position: absolute;
	left: 41px;
	top: 433px;
	width: 260px;
	height: 20px;
	z-index: 9;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
#Email {
	position: absolute;
	left: 41px;
	top: 473px;
	width: 113px;
	height: 20px;
	z-index: 10;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
#CompanyName {
	position: absolute;
	left: 41px;
	top: 553px;
	width: 131px;
	height: 21px;
	z-index: 11;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
#apDiv1 {
	position: absolute;
	left: 41px;
	top: 513px;
	width: 138px;
	height: 19px;
	z-index: 12;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
#apDiv2 {
	position: absolute;
	left: 35px;
	top: 307px;
	width: 1099px;
	height: 123px;
	z-index: 7;
}
#Submit {
	position: absolute;
	left: 1004px;
	top: 278px;
	width: 88px;
	height: 24px;
	z-index: 8;
}
#title {
	position: absolute;
	left: 301px;
	top: 239px;
	width: 405px;
	height: 40px;
	z-index: 9;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 50px;
}
#Table {
	position: absolute;
	left: 40px;
	top: 402px;
	width: 949px;
	height: 25px;
	z-index: 10;
}
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</head>

<body>
    <form id="form3" name="form3" method="post" action="transactions">
<div id="logo"><img src="Untouchables Logo.jpg" width="245" height="256" /></div>
<div id="menubar">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="profile.jsp">Home</a>    </li>
    <li><a href="creditList.jsp">Credit List</a></li>
    <li><a href="debitList.jsp">Debit List</a>    </li>
    <li><a href="transaction.jsp">Transaction</a></li>
    <li><a href="index.jsp">Log out</a></li>
  </ul>
</div>
<div id="apDiv2">
  <table width="1062" border="6" cellpadding="5">
    <tr>
      <th width="120" scope="col">Name</th>
      <th width="138" scope="col">Username</th>
      <th width="241" scope="col">Description</th>
      <th width="82" scope="col">Type</th>
      <th width="62" scope="col">Amount</th>
      <th width="302" scope="col">Due Date</th>
    </tr>
    
    <tr>
      <td><input name="Title" type="text" id="Title" size="20" maxlength="26" /></td>
      <td><input name="user_Name" type="text" id="user_Name" size="16" maxlength="16" /></td>
      <td><input name="Description" type="text" id="Description" size="35" maxlength="35" /></td>
      <td>
        <select name="type" id="type">
          <option>Type</option>
          <option value="Lender">Lender</option>
          <option value="Lendee">Lendee</option>
        </select>
      </td>
      <td><input name="Amount" type="text" id="Amount" size="10" maxlength="26" /></td>
      <td>
        <select name="Day" size="1" id="Day2">
          <option>Day</option>
          <option value="01">01</option>
          <option value="02">02</option>
          <option value="03">03</option>
          <option value="04">04</option>
          <option value="05">05</option>
          <option value="06">06</option>
          <option value="07">07</option>
          <option value="08">08</option>
          <option value="09">09</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
          <option value="17">17</option>
          <option value="18">18</option>
          <option value="19">19</option>
          <option value="20">20</option>
          <option value="21">21</option>
          <option value="22">22</option>
          <option value="23">23</option>
          <option value="24">24</option>
          <option value="25">25</option>
          <option value="26">26</option>
          <option value="27">27</option>
          <option value="28">28</option>
          <option value="29">29</option>
          <option value="30">30</option>
          <option value="31">31</option>
        </select>
        <select name="Month" id="Month2">
          <option>Month</option>
          <option value="01">Jan</option>
          <option value="02">Feb</option>
          <option value="03">Mar</option>
          <option value="04">Apr</option>
          <option value="05">May</option>
          <option value="06">Jun</option>
          <option value="07">Jul</option>
          <option value="08">Aug</option>
          <option value="09">Sep</option>
          <option value="10">Oct</option>
          <option value="11">Nov</option>
          <option value="12">Dec</option>
        </select>
        <select name="Year" id="Year2">
          <option>Year</option>
          <option value="2011">2011</option>
          <option value="2012">2012</option>
          <option value="2013">2013</option>
          <option value="2014">2014</option>
          <option value="2015">2015</option>
          <option value="2016">2016</option>
        </select>
      </td>
    </tr>
  </table>
</div>
<% 
    
%>

<div id="Submit">
  
    <input type="submit" name="Submit" id="SubMit" value="Submit"  >
  </form>
</div>
<div id="Table"></div>
<label for="titlename"></label>
<div id="title">Transaction Entry</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>

</body>
</html>

