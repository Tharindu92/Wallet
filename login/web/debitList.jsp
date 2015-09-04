<%@page import="java.sql.*"%>
<%@page import="userPack.user"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DebitList</title>
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
	width: 394px;
	height: 123px;
	z-index: 7;
}
#Submit {
	position: absolute;
	left: 890px;
	top: 279px;
	width: 88px;
	height: 24px;
	z-index: 8;
}
#title {
	position: absolute;
	left: 301px;
	top: 239px;
	width: 333px;
	height: 40px;
	z-index: 9;
}
#Table {
	position: absolute;
	left: 150px;
	top: 402px;
	width: 949px;
	height: 25px;
	z-index: 10;
}
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</head>

<body>
<div id="logo"><img src="Untouchables Logo.jpg" width="245" height="256" /></div>
<div id="menubar">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="profile.jsp">Home</a>    </li>
    <li><a href="creditList.jsp">Credit List</a></li>
    <li><a href="DdebitList.jsp">Debit List</a>    </li>
    <li><a href="transaction.jsp">Transaction</a></li>
    <li><a href="index.jsp">Log out</a></li>
  </ul>
</div>
<div id="apDiv2">
  <table width="954" border="5" cellpadding="5">
    <tr>
      <th width="120" scope="col">Transaction ID</th>
      <th width="144" scope="col">Username</th>
      <th width="246" scope="col">Description</th>
      <th width="63" scope="col">Amount</th>
      <th width="299" scope="col">Due Date</th>
    </tr> 
  </table>

 
    <%       
           user current = (user)request.getSession().getAttribute("user");
           String temp =current.getUsername();
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://mysql-dev-01.cloud.wso2.com:3306/Wallet_theuntoucha8081", "chamil_6j2ye-o9", "chamil");
            
            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("SELECT * FROM Wallet_theuntoucha8081.Transactions WHERE TLendee='" + temp +"'") ; 
        %>

        <TABLE width="954" BORDER="1" cellpadding="5">
            <% while(resultset.next()){ %>
            <TR>
                <TD width="120" scope="col"> <%= resultset.getInt(1) %></TD>
                <TD  width="144" scope="col"> <%= resultset.getString(4) %></TD>
                <TD width="246" scope="col"> <%= resultset.getString(8) %></TD>
                <TD width="63" scope="col"> <%= resultset.getInt(3) %></TD>
                <TD width="299" scope="col"> <%= resultset.getString(7) %></TD>
            </TR>
                
            <% } %>
        </TABLE>
</div>
<div id="Submit">

</div>
<div id="Table"></div>
<label for="titlename"></label>
<div id="title"><strong>debit List of              
    ${user.getUsername()} </strong>
</div>


</body>
</html>

