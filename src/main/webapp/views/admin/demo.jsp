<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<script type="text/javascript">
       function Display() {
    		var xHttp;
			var name = document.myform.name.value;
			var url = "/home/GetUserServlet?name=" + name;
			//var params="pageNumber="+pageNumber;
			if (window.XMLHttpRequest) {
				xHttp = new XMLHttpRequest();
			} else {
                xHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xHttp.onreadystatechange = function() {
				if(xHttp.readyState == 4){
					var data = xHttp.responseText;
					document.getElementById("bodyTable").innerHTML = data; 
					//$('#bodyTable').html(responseText)
					//console.log(data)
					//alert(data);
				}
			}
			
			xHttp.open("POST",url,true);
			xHttp.send();
	}
</script>
</head>
<body>
<form name ="myform">
<input type="text" name ="name"/>
<br/>
<br/>
<input type="button" onclick="Display()" value="Display">
</form>
<p id="bodyTable"><p>
</body>
</html>