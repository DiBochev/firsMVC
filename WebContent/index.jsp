<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="firstMVC.Controller" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function startTime() {
    var today=new Date();
    var date = today.getDate();
var month = today.getMonth()+1;
var year = today.getYear() +1900;
    var h=today.getHours();
    var m=today.getMinutes();
    var s=today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML = date+'/'+ month + '/'+year  + '  '+'   ' +h+":"+m+":"+s;
    var t = setTimeout(function(){startTime()},500);
}

function checkTime(i) {
    if (i<10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
</head>
<body onload="startTime()">
<h1> Time on server</h1>
<% 
	out.println(Controller.GetTime()); 
%>
<h1> Time on your computer</h1>
<p id="demo"></p>
<div id="txt"></div>
</body>
</html>
