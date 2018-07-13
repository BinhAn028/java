<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function checknamnhuan(year){
		if((year%4==0 && year%100!=0)|| year%400==0) {
			return true;
		}
		return false;
	}
	function checkdate(year,month,day) {
		var check=checknamnhuan(year);
		if(month<=0 || month>12) {
			return false;
		}
		if(month==1 || month==3|| month==5|| month==7|| month==8|| month==10|| month==12) {
			if(day<=0 || day>31) {
				return false;
			}
		}
		if(month==4 || month==6|| month==9|| month==11) {
			if(day<=0 || day>30) {
				return false;
			}
		}
		if(month==2) {
			if(check==true) {
				if(day<=0 || day>29) {
					return false;
				}
			}
			else {
				if(day<=0 || day>28) {
					return false;
				}
			}
		}
			return true;
	}
	
	function checkformat(datestr) {
		datestr=datestr.trim();
		if(datestr.length!=10) {
			return false;
		} 
		var arr=datestr.split("/");
		if(arr[0].length!=4 || arr[1].length!=2 || arr[2].length!=2) {
			return false;
		}
		if(isNaN(arr[0]) ||isNaN(arr[1]) ||isNaN(arr[2]) ) {
			return false;
		}
		return true;
	}
	function check() {
		var datestr=document.getElementById('datee').value;
		var arr=datestr.split("/");
		var year=parseInt(arr[0]);
		var month=parseInt(arr[1]);
		var day=parseInt(arr[2]);
		console.log(year);
		console.log(month);
		console.log(day);	
		var format=checkformat(datestr)
		console.log("dinh dang: "+format);
		
		if(format==false) {
			alert("sai dinh dang");
			return false;
		}
		else {
			var check=checkdate(year,month,day);
			console.log("ngay thang:"+check);
			if(check==false) {
				alert("sai ngay thang");	
				return false;
			}
			
		}
			return true;
		}
</script>
</head>
<body>
	<form action="T2" method="post" onsubmit="return check()" >
		<%
			String action = (String) request.getAttribute("action");
			if (action == null) {
				action = "";
			}
		%>
		date <input type="text" id="datee" name="name" value='<%=action%>'>
		<input type="submit" id="date" >
	</form>
</body>
</html>