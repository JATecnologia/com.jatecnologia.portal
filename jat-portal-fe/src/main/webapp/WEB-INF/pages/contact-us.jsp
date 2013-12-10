<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title><spring:message code="contact.title"/></title>
<meta name="description" content="Response Premium Html Responsive Template - Contact Page" />
<meta name="keywords" content="Responsive Html, Responsive Template, Response, Free Icons, List Section" />
<meta name="apple-mobile-web-app-capable" content="yes" /> 
<meta name="apple-mobile-web-app-status-bar-style" content="grey" /> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;" /> 
<link rel="shortcut icon" type="image/x-icon" href="http://assets.jatecnologia.com/ico/favicon.ico"> 
<link rel="bookmark icon" href="http://assets.jatecnologia.com/ico/favicon.ico"> 
<link href="style/main.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="js/twitter.js"></script>    
<script src="js/custom.js"></script>
<script src="js/google.map.js"></script>   
<script>
//// Start Simple Sliders ////
$(function() {
	setInterval("rotateDiv()", 10000);
});
	
	function rotateDiv() {
	var currentDiv=$("#simpleslider div.current");
	var nextDiv= currentDiv.next ();
	if (nextDiv.length ==0)
		nextDiv=$("#simpleslider div:first");
	
	currentDiv.removeClass('current').addClass('previous').fadeOut('2000');
	nextDiv.fadeIn('3000').addClass('current',function() {
		currentDiv.fadeOut('2000', function () {currentDiv.removeClass('previous');});
	});

}
//// End Simple Sliders //// 

$(document).ready(function() {
//// Start Contact Form ////
	$('#ajaxcontactform').submit(function(){$('input[type=submit]', this).attr('disabled', 'disabled');});
	
	
	$('#ajaxcontactform').submit(
	
		function parseResponse() {
	
			var usersname = $("#name");
			var usersemail = $("#email");
			var usersphonenumber = $("#phone");
			var usersmessage = $("#comment");
			var contactformid = $("#contactformid");
			var url = "contact.php";
			
				var emailReg = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
				var valid = emailReg.test(usersemail.val());
			 
				if(!valid) {
					$("#contactwarning").html('<p class="rejectionalert"><span>Your email is not valid!</span></p>').slideDown().delay(2000).slideUp();
					$('input[type=submit]', $("#ajaxcontactform")).removeAttr('disabled');
					return false;
				}
			
			  if (usersname.val() == "" || usersname.val() == "Please Insert Your Name") {				  
				   $("#contactwarning").html('<p class="rejectionalert"><span>Please Insert Your Name!</span></p>').slideDown().delay(2000).slideUp();
				   $('input[type=submit]', $("#ajaxcontactform")).removeAttr('disabled');
				   return false;			   
			  }
			  if (usersemail.val() == "" || usersemail.val() == "Please Insert Your Email") {
				   $("#contactwarning").html('<p class="rejectionalert"><span>Please Insert Your Email!</span></p>').slideDown().delay(2000).slideUp();
				   $('input[type=submit]', $("#ajaxcontactform")).removeAttr('disabled');
				   return false;
			  }
			  if (usersphonenumber.val() == "" || usersphonenumber.val() == "Please Insert Your Phone Number") {
				   $("#contactwarning").html('<p class="rejectionalert"><span>Please Insert Your Phone Number!</span></p>').slideDown().delay(2000).slideUp();
				   $('input[type=submit]', $("#ajaxcontactform")).removeAttr('disabled');
				   return false;
			  }
			  if (usersmessage.val() == "" || usersmessage.val() == "Please Leave A Message") {
				   $("#contactwarning").html('<p class="rejectionalert"><span>You forgot to leave a message!</span></p>').slideDown().delay(2000).slideUp();
				   $('input[type=submit]', $("#ajaxcontactform")).removeAttr('disabled');
				   return false;
			  }

					$.post(url,{ usersname: usersname.val(), usersemail: usersemail.val(), usersphonenumber: usersphonenumber.val(), usersmessage: usersmessage.val(), contactformid: contactformid.val() } , function(data) {
						$('#contactajax').html(data);
						$('#contactajax').slideDown().delay(3000).slideUp();
						$("#name").val('Please Insert Your Name');
						$("#email").val('Please Insert Your Email');
						$("#phone").val('Please Insert Your Phone Number');
						$("#comment").val('Please Leave A Message');
						$('input[type=submit]', $("#ajaxcontactform")).removeAttr('disabled');
					});
			  
		  }
	  
	  );
//// End Contact Form ////

 });
</script> 
</head>

<body onload="initialize()">
	<header >
		 <jsp:include page="../includes/header.jsp"/>
	</header>

<div id="main">
    <!-- Start H1 Title -->
    <div class="titlesnormal">    
    	<h1><spring:message code="contact.title"/></h1>        
        <span></span>    
    </div>
    <!-- End H1 Title -->
    <!-- Start Main Body Wrap -->
    <div id="main-wrap">
        
        <!-- Start Left Section -->
        <div class="leftsection">

            <!-- Start Google Maps -->
        	<div class="blogwrapstart">
            
            	<div id="map_canvas"></div>
                <span class="box-arrow"></span>
            
            </div>
            <!-- End Google Maps -->
        
        </div>
        <!-- End Left Section -->
        
        <!-- Start Right Section -->
        <div class="rightsection">
            
        	<!-- Start Blog Widget -->
            <div class="blogwidgetstart">
            	<!-- Start Categories Widget -->
            	<div class="widgettitle"><h4>Contact Details</h4></div>
                
                <div class="widgetbody">
                
                	<div class="blogcategories">
                    
                    	<div class="contactdetails">
                    
                            <p><spring:message code="contact.email"/></p>
                            <p><spring:message code="contact.phone"/></p>
                            <p><spring:message code="contact.address.street"/><br /><spring:message code="contact.address.town"/><br /><spring:message code="contact.address.city"/><br /><spring:message code="contact.address.country"/><br /><spring:message code="contact.address.zip"/></p>                            
                        </div>
                    
                    </div>
                
              </div>
              <!-- End Categories Widget -->
              <span class="box-arrow"></span>
            
            </div>
            <!-- End Blog Widget -->
        
        </div>
        <!-- End Right Section -->
        
        <!-- Start Full Width -->
        <div class="boxes-full">
        
            <div class="contacttitle">
            
                <h2>Contact Responsive</h2>
            
            </div>
        
        	<div class="boxes-padding fullpadding">
            
            <div id="contactwarning"></div>
            <div id="contactajax"></div>
            
            <form action="javascript:parseResponse();" method="post" name="ajaxcontactform" id="ajaxcontactform">
            
            	<div class="contacttextarea">
                	<input name="contactformid" id="contactformid" type="hidden" value="1" />
                
                	<fieldset>
                    	<textarea name="comment" id="comment" cols="5" rows="5" class="contacttextarea"onfocus="if (this.value == 'Please Leave A Message') {this.value = '';}">Please Leave A Message</textarea>
                    </fieldset>
                
                </div>
                
                <div class="contacttextboxes">
                
                	<fieldset>
                    	<input id="name" name="name" type="text" class="contacttextform" onfocus="if (this.value == 'Please Insert Your Name') {this.value = '';}"value="Please Insert Your Name">
                    </fieldset>
                    
                	<fieldset>
                    	<input id="phone" name="phone" type="text" class="contacttextform" onfocus="if (this.value == 'Please Insert Your Phone Number') {this.value = '';}"value="Please Insert Your Phone Number">
                    </fieldset>
                    
                	<fieldset>
                    	<input id="email" name="email" type="text" class="contacttextform" onfocus="if (this.value == 'Please Insert Your Email') {this.value = '';}"value="Please Insert Your Email">
                    </fieldset>
                    
                	<fieldset>
                    	<input name="send" type="submit" class="contactformbutton" value="Send">
                    </fieldset>
                
                </div>
                
            </form>
            
            </div>
            
            <span class="box-arrow"></span>
            
        </div>
        <!-- End Full Width -->
        
    </div>
    <!-- End Main Body Wrap -->

</div>
	<footer>
		 <jsp:include page="../includes/footer.jsp"/>
	</footer>
<!-- Start Scroll To Top Div -->
<div id="scrolltab"></div>
<!-- End Scroll To Top Div -->
</body>
</html>