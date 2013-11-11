<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">	
	<title><spring:message code="home.title"/></title>	
	<meta name="description" content="Web site for J. A. Tecnologia" />	
	<meta name="keywords" content="tecnologia, projects, projetos, mobile" />
	<link rel="shortcut icon" type="image/x-icon" href="http://assets.jatecnologia.com/ico/favicon.ico"> 
	<link rel="bookmark icon" href="http://assets.jatecnologia.com/ico/favicon.ico"> 
	<link href="style/main.css" rel="stylesheet" type="text/css">
	<meta name="apple-mobile-web-app-capable" content="yes" /> 
	<meta name="apple-mobile-web-app-status-bar-style" content="grey" /> 
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;" />
</head>

<body>
  	<header >
		 <jsp:include page="../includes/header.jsp"/>
	</header>

<div id="main">

    <!-- Start Slider Wrapping -->
    <div id="sliderwrap">
		
        <!-- Start Slider -->
        <div id="slider" class="nivoSlider">
            <img src="images/slider-banners/slider01.jpg" alt=""/>
            <img src="images/slider-banners/slider02.jpg" alt=""/>
            <img src="images/slider-banners/slider03.jpg" alt=""/>
        </div>
        <!-- End Slider -->
        <!-- Start Slider HTML Captions -->
        <div id="htmlcaption" class="nivo-html-caption">
            <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>.
        </div>
        <!-- End Slider HTML Captions -->
    
    </div>
    <!-- End Slider Wrapping -->
    <!-- Start H1 Title -->
    <div class="titles">
    
    	<h1>Welcome to the response- Premium HTML Responsive theme</h1>
        
        <span></span>
    
    </div>
    <!-- End H1 Title -->
    <!-- Start Main Body Wrap -->
    <div id="main-wrap">
    
    	<!-- Start Featured Boxes -->
        <div class="boxes-third boxes-first">
        
        	<div class="boxes-padding">
            
            	<div class="bti">
                	<div class="featured-images"><img src="images/responsive-icon.png" width="72" height="53" alt="Responsive"></div>
                	<div class="featured-titles">Responsive Html</div>
                </div>
                <div class="featured-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc, nec sagittis tellus.</div>
            
            </div>
            
            <span class="box-arrow"></span>
        
        </div>
        
        <div class="boxes-third">
        
        	<div class="boxes-padding">
            
            	<div class="bti">
                    <div class="featured-images"><img src="images/cleansleek-icon.png" width="66" height="53" alt="Responsive"></div>
                    <div class="featured-titles">clean & sleek</div>
                </div>
                <div class="featured-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc, nec sagittis tellus.</div>
            
            </div>
            
            <span class="box-arrow"></span>
        
        </div>
        
        <div class="boxes-third boxes-last">
        
        	<div class="boxes-padding">
            	
                <div class="bti">
                    <div class="featured-images"><img src="images/google-icon.png" width="54" height="53" alt="Responsive"></div>
                    <div class="featured-titles">cross browser</div>
                </div>
                <div class="featured-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc, nec sagittis tellus.</div>
            
            </div>
            
            <span class="box-arrow"></span>
        
        </div>
        <!-- End Featured Boxes -->
        
        <!-- Start Latest Project titles -->
        <div class="boxes-full">
        
        	<div class="boxes-padding fullpadding"><h1>our latest projects</h1></div>
            
            <span class="box-arrow"></span>
        
        </div>
        <!-- End Latest Project titles -->
        
        <!-- Start Latest 3 Projects -->
		<div class="boxes-third boxes-first">
        
       	  <div class="latestthree">
            
           	<div class="title">
                Tuts Premium
                <span class="titlearrow"></span>
                </div>
                <div class="latestthreeimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto" title="Lorem ipsum dolor sit amet"><img src="images/latest-projects/project01.jpg" alt="Lorem ipsum dolor sit amet" width="305" height="132" border="0"/></a></div>
            <div class="text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc
                <span class="textarrow"></span>
                </div>
            
          </div>
        
        </div>
        
		<div class="boxes-third">
        
       	  <div class="latestthree">
            
           	<div class="title">
                Themeforest
                <span class="titlearrow"></span>
                </div>
                <div class="latestthreeimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto" title="Lorem ipsum dolor sit amet"><img src="images/latest-projects/project02.jpg" alt="Lorem ipsum dolor sit amet" width="305" height="132" border="0"/></a></div>
            <div class="text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc
                <span class="textarrow"></span>
                </div>
            
          </div>
        
        </div>
        
        <div class="boxes-third boxes-last">
        
       	  <div class="latestthree">
            
           	<div class="title">
                Graphicriver
                <span class="titlearrow"></span>
                </div>
                <div class="latestthreeimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto" title="Lorem ipsum dolor sit amet"><img src="images/latest-projects/project03.jpg" alt="Lorem ipsum dolor sit amet" width="305" height="132" border="0"/></a></div>
            <div class="text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc
                <span class="textarrow"></span>
                </div>
            
          </div>
        
        </div>
        <!-- End Latest 3 Projects -->
    
    </div>
    <!-- End Main Body Wrap -->

</div>


	<footer>
		 <jsp:include page="../includes/footer.jsp"/>
	</footer>



</body>
</html>