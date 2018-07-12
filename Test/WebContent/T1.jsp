<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function
</script>
</head>
<body>
	<form action="T1" method="post">
		<input type="hidden" value="1">
		<table style="width: 100%">
			<thead>
				<tr style="text-align: left">
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<String> list = (ArrayList) request.getAttribute("ds");
					int a = list.size();
				%>
				<%
					for (int i = 0; i < list.size(); i++) {
						String b = list.get(i).toString();
				%>
				<tr>
					<td><a href="T2?action=<%=b%>"><%=b%></a></td>
					<td>Smith</td>
					<td>50</td>
				</tr>
				<%
					}
				%>


			</tbody>
		</table>
		<a href="T2?action=<%=a%>"><input type="button"></a>
	</form>


</body>
</html>