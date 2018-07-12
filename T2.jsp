<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function check() {
		var date=document.getElementById('date');
		console.log(date);
		}
</script>
</head>
<body>
	date <input type="text" name="name" value='<% 
	String action=(String)request.getAttribute("action");
	if(action==null) {
		action="";
	}	
	%>
	<%=action%>' >
	<input type="button" id="date" onclick=check()>
</body>
</html>