<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Team Builder!</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
</head>
<jsp:include page="/header.jsp" />
<body onload = "loadTeams()">


<h1> TEAMS</h1>



<input id = "clear" type = "button" value = "Clear All"/>

<script>


document.getElementById("clear").onclick = function(){
	
	
	var cookies = document.cookie.split(";");
	for(var i = 0; i < cookies.length; ++i){
		var cookie = cookies[i];
		//console.log(cookie);
		  var eqPos = cookie.indexOf("=");
	        var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
	        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
	}
	
	//deleting stupid caterpie cookie
	//document.cookie = cookies[0]+";expires=Thu, 01 Jan 1970 00:00:00 GMT";
	
	console.log("Cleared");
	
}


 function loadTeams(){
	 //console.log(document.cookie);
	 /*
	 var c = document.cookie.split(";");
	 
	 for(var i = 0; i < c.length; ++i){
		 var curr = c[i].split(",");
		 for(var x = 0; x < curr.length;++x)
			 console.log(curr[x]);
		 
	 }
	 */
	 
	 var c = document.cookie.split(";");
	 for(var i = 0; i < c.length;++i){
		var curr = c[i].split("@"); 
	 
		 for(var x = 0;x<curr.length;++x)
			console.log(curr[x]);
	 }
	 
 }

</script>

</body>

</html>