<%@page pageEncoding="UTF-8" %>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>若果网络Zogo</title>
    <style>
    	body{font-size:12px;font-family:"Verdana,宋体";margin-top:50px;}
    </style>
  </head>

  <body>
  <div align="center">
  <form action="/l">
	传说中的登录页面 N:
	<input type="text" name="loginname" id="loginname" method="post"/>
	P:
	<input type="password" name="password" id="password" />
	GO:
	<input type="submit" value="YeaH!" />
  </form>
  </div>
  
  <div align="center">
	${message}
  </div> 
  </body>
  
</html>
