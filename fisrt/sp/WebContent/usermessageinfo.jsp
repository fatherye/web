<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>usermessageinfo</title>
 <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
    <link rel="stylesheet" type="text/css" href="css/mystyle.css">
    <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
<div class="col-md-12 height200">

</div>
<div class="col-md-4"></div>
<div class="col-md-4 textcenter">
<p>${message}</p>
<a href="usermessage?userId=${userId}">返回</a>
</div>

<div class="col-md-4"></div>
</body>
</html>