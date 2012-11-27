<%-- 
    Document   : index
    Created on : 11 28, 12, 1:42:15 AM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/metro/css/modern.css" rel="stylesheet">
        <link href="res/css/main_style.css" rel="stylesheet">
        <script type="text/javascript" src="res/scripts/jquery-1.8.3.min.js"></script>          
        <script type="text/javascript" src="res/metro/javascript/dropdown.js"></script>
        <title>The LaSallian Photographers</title>
    </head>
    <body>
        <div class="page" id="main">
	     <div class="page-header">
               <div class="page-header-content bg-color-green">
                    <h2 id="headertext">The LaSallian Photo Staff Management</h2>
               </div>
	    </div>  	<!-- PAGE HEADER-->    
        <div class="page-region">
            <div class="page-region-content">
                <div class="nav-bar bg-color-green">
                    <div class="nav-bar-inner">
                        <span class="element">Menu</span>
                        <span class="divider"></span>
                        <ul class="menu">
                            <li data-role="dropdown">
                                <a href="#">Tasks</a>
                                <ul class="dropdown-menu">
                                     <li><a href="#">Add</a>
                                         <ul>
                                            <li><a href="AddEvent.jsp">Event</a></li>
                                             <li><a href="AddAssignment.jsp">Assignment</a></li>
                                        </ul>
                                    </li>
                                    <li class="divider"></li>   
                                    <li><a href="#">Update</a></li>
                                    <li><a href="#">Review</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Dismiss</a></li>
                                </ul>
                             </li>                
                <li data-role="dropdown">
                    <a href="#">Staffers</a>
                    <ul class="dropdown-menu">
                        <li><a href="AddStaffer.jsp">Register</a></li>
                        <li><a href="#">Update Profile</a></li>
                        <li><a href="#">View Profile</a></li>
                         <li class="divider"></li>
                         <li><a href="#">Remove</a></li>
                    </ul>
                </li>
                <li data-role="dropdown">
                    <a href="#">Profile</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">View Account</a></li>
                        <li><a href="#">Update Account</a></li>
                         <li class="divider"></li>
                         <li><a href="#">Log-Out</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        </div>  <!--NAV BAR-->     
            </div> <!--PAGE REGION CONTENT-->
        <div class="page-region-content">
            <!--PLACE OTHER CONTENT HERE-->
            <div class="grid">
                <div class="row offset1">
                    <h2>G'day mate!</h3>
                    <p> Gonna add a staffer, create a new event, or have you
                        finally decided kick someone out? Get clicking then! </p>
                </div>
            </div>
        </div>
        </div> <!--PAGE-REGION--> 

        </div> <!-- MAIN-->  
    </body>
</html>
