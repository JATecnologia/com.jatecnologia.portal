<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">	
</head>
	<body>
		<h3>Testing...</h3>
		<div id="twitter">
		</div>
		<script type="text/javascript" src="http://assets.jatecnologia.com/js/jquery/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
			  var tweets = 3; //specify the number you want here
			  $.ajax({
			    url: 'https://api.twitter.com/1/statuses/user_timeline/jatecnologia.json?count=' + tweets + '&include_rts=1&callback=?',
			    dataType: 'json',
			    timeout: 15000,

			    success: function(data) {
				    
			      for (var i=0; i<data.length; i++) {
			    	
			        $("#twitter").append("" + data[i].text);
			        $("#twitter").append("" + data[i].created_at + "");
			      }
			    },

			    error: function() {
			      alert('Failure!');
			    }

			  });

			});
		</script>		
	</body>
</html>