<%@ page language="java" contentType="text/html" %>
<%@ page import="java.sql.*" %>


<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
  <title>Entrepreneur Nation</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
  <nav class="maroon" role="navigation">
   <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo"><img src="" height="65" width="65" alt="Logo"> </img></a>
      <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons white-text">menu</i></a>

	  <ul class="right hide-on-med-and-down">
        <li class="active"><a href="#">Home</a></li>
		<li><a href="news.html">News</a></li>
		<li><a href="awards.html">Awards</a></li>
		<li> <a href="stories.jsp">Stories</a></li>
		<li><a href="events.html">Events</a></li>
		<li><a href="states.html">States</a></li>
		<li><a href="#">Contact</a></li>
      </ul>
	   <ul class="side-nav" id="slide-out">
	   <li><div class="userView">
      <div class="background">
        <img src="bg2.jpg">
      </div>
      <a href="#!name"><h2><span class="white-text name">Entrepreneur Nation</span></h2></a>
      <a href="#!email"><span class="white-text email">dsdsdsh@gmail.com</span></a>
    </div></li>
        <li><a class="waves-effect" href="index.html">Home</a></li>
        <li><a class="waves-effect" href="news.html">News</a></li>
        <li><a  class="waves-effect" href="Awards.html">Awards</a></li>
        <li><a class="waves-effect" href="stories.jsp">Stories</a></li>
		<li><a class="waves-effect" href="events.html">Events</a></li>
		<li><a class="waves-effect" href="states.html">States</a></li>
		<li><a class="waves-effect" href="#">Contact</a></li>
      </ul>
    </div>
  </nav>
  

  <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container">
        <br><br>
        <h1 class="header center black-text text-lighten-2">Entrepreneur Nation</h1>
        <div class="row center">
          <h5 class="header col s12 black-text light">A place you can find everything you need to achieve your dreams</h5>
        </div>
        <br><br>

      </div>
    </div>
    <div class="parallax"><img src="shutterstock_1753400781.jpg" width="1000" alt="Unsplashed background img 1"></div>
  </div>


  <div class="container ">
    <div class="section ">

      <!--   Icon Section   -->
        <div class="col">
        <div class="col s12 m6">
				<!--<div class="card-image">
					<img src="formstack-in-the-news.jpg" width="870" height="500" center-align></img>
				</div>
            <div class="card-content black-text"></div>
              <p><div class="row">-->
        <div class="col s12 m4">
		 <div class="card medium"   style="overflow:auto"> 
		  <div class="card-image">
              <img src="13-material-design-background-colors-for-your-presentation-rgbhex-pdf-template-8-638.jpg">
		 <div class="card content black-text">	
          <span class="card-title"><div class="icon-block">
            <h4 class="center"><i class="material-icons">business</i></h4><h5 class="center">Start Up</h5></span>
			</div></div></div>
            <p class="light">
	 <% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/qa?zeroDateTimeBehavior=convertToNull", "root", "");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from yourstory") ; 
	%>
         <% while(resultset.next()){ %>
				<ul style="list-style-type:disc">
				<li style="font-size:14px"><a class="black-text" href=" <% out.println(resultset.getString(1)); %>" ><% out.println(resultset.getString(2)); %></a><hr></li>
				</ul>
			 <% } %>
			</p>
          </div>
        </div></div></div>

		
		
		
         <div class="col s12 m4">
		 <div class="card medium" style="overflow:auto">
		 <div class="card-image">
			<img src="1565C0.png">
		 <div class="card content black-text">	
          <span class="card-title"><div class="icon-block">
            <h4 class="center"><i class="material-icons">call_split</i></h4><h5 class="center">Marketing</h5></span>
			</div></div></div>
			
            <p class="light">
  
				<% 
            Connection connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/qa?zeroDateTimeBehavior=convertToNull", "root", "");

            Statement statement1 = connection1.createStatement() ;
            ResultSet resultset1 = 
                statement1.executeQuery("select * from marketing") ; 
	%>
         <% while(resultset1.next()){ %>
				<ul style="list-style-type:disc">
				<li style="font-size:14px"><a class="black-text" href=" <% out.println(resultset1.getString(1)); %>" ><% out.println(resultset1.getString(2)); %></a><hr></li>
				</ul>
			 <% } %>
  
			
			</p>
          </div>
        </div>
		
		 
		 
		 <div class="col s12 m4">
		 <div class="card medium" style="overflow:auto">
		 <div class="card-image">
			<img src="4E342E.png">
		 <div class="card content black-text">	
          <span class="card-title"><div class="icon-block">
            <h4 class="center"><i class="material-icons">supervisor_account</i></h4><h5 class="center">Investments</h5></span>
			</div></div></div>
			
            <p class="light">
				<% 
            Connection connection2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/qa?zeroDateTimeBehavior=convertToNull", "root", "");

            Statement statement2 = connection2.createStatement() ;
            ResultSet resultset2 = 
                statement2.executeQuery("select * from funding") ; 
	%>
         <% while(resultset2.next()){ %>
				<ul style="list-style-type:disc">
				<li style="font-size:14px"><a class="black-text" href=" <% out.println(resultset2.getString(1)); %>" ><% out.println(resultset2.getString(2)); %></a><hr></li>
				</ul>
			 <% } %>

  
			
			</p>
          </div>
        </div>
		
		
		</div></div>
      

  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
        </div>
      </div>
    </div>
    <div class="parallax"><img src="bg1.jpg" height="675" width="1200" alt="Unsplashed background img 3"></div>
  </div>

  <footer class="page-footer grey darken-3">
    <div class="container">
      <div class="row">
        <div class="col l3 s12">
          <h5 class="white-text">Navigation</h5>
          <ul>
            <li><a class="white-text" href="index.html">Home</a></li>
            <li><a class="white-text" href="news.html">News</a></li>
            <li><a class="white-text" href="#!">Events</a></li>
            <li><a class="white-text" href="#!">Awards</a></li>
          </ul>
        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Connect</h5>
          <ul>
            <li><a class="white-text" href="#!">facebook</a></li>
            <li><a class="white-text" href="#!">twitter</a></li>
            <li class="white-text">Phone: 9999999999</li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  </body>
</html>
