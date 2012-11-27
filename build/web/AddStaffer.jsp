<%-- 
    Document   : AddStaffer
    Created on : 11 27, 12, 8:27:45 AM
    Author     : Bien Mandac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <title>Register Staffer</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/metro/css/modern.css" rel="stylesheet">
        <link href="res/css/main_style.css" rel="stylesheet">   
        <script type="text/javascript" src="res/scripts/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="res/metro/javascript/dropdown.js"></script>            
        
        <script type="text/javascript" src="res/scripts/jquery.validate.js"></script>
        <script type="text/javascript" src="res/scripts/regstaffer_validate.js"></script>  
  
    </head>
    <body>
        <div class="page" id="main">
            <a href="index.jsp"> 
            <div class="page-header">
               <div class="page-header-content bg-color-green">
                    <h2 id="headertext">The LaSallian Photo Staff Management</h2>
               </div>
	    </div> </a> <!-- PAGE HEADER-->  
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
        <h2>Register Staffer</h2>
        
        <div id="content">
            <form id="details" name="details" action="SubmitStaffer.jsp" method="POST">
                
                <div class="grid" id="personal">      
                    <div class="row"> 
                        <h3>Personal Information</h3>  
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                            First Name:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="fname" name="fname" required="required" maxlength="32"/>
                        </div>                
                    </div> <!--INPUT-->
                    
                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                           Last Name:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="lname" name="lname" required="required" maxlength="32"/>
                        </div>                
                    </div> <!--INPUT-->     

                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                           ID #:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="idnum" name="idnum" required="required" maxlength="8"/>                       </div>                
                    </div> <!--INPUT-->                       
               </div> <!--PERSONAL:GRID-->   

                <div class="grid" id="contact">      
                    <div class="row"> 
                        <h3>Contact Details</h3>  
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                           Primary Contact #:  </div>
                        <div class="span6" id="field">
                           <input type="text" id="pnum" name="pnum" required="required" maxlength="15"/>
                        </div>                
                    </div> <!--INPUT-->
                    
                    <div class="row offset1" id="input">
                        <div class="span3"" id="text">
                            Secondary Contact #:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="snum" name="snum" maxlength="15"/>
                        </div>                
                    </div> <!--INPUT-->     

                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                           Email Address:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="emailf" name="emailf" required="required" maxlength="32"/>                    </div>                
                    </div> <!--INPUT-->                       
               </div> <!--GRID-->                  

               
                <div class="grid" id="credentials">      
                    <div class="row"> 
                        <h3>Log-In Credentials</h3>  
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                            Username:
                        </div>
                        <div class="span6" id="field">
                           <input type="text" id="uname" name="uname" required="required" maxlength="15"/>  
                        </div>                
                    </div> <!--INPUT-->
                    
                    <div class="row offset1" id="input">
                        <div class="span3"" id="text">
                            Password:
                        </div>
                        <div class="span6" id="field">
                            <input type="password" id="p1" name="p1" required="required" maxlength="16"/>
                        </div>                
                    </div> <!--INPUT-->     

                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                           Confirm Password:
                        </div>
                        <div class="span6" id="field">
                            <input type="password" equalTo="#p1" id="p2" name="p2" required="required" maxlength="16"/>                          </div>                
                    </div> <!--INPUT-->                       
                    <div class="row offset1">
                        <br>
                        <br>
                        <input type="submit" id="sub" name="sub" value="Next"/> 
                    </div>
                </div> <!--GRID-->                 
                                          
            </form>
        </div> <!--CONTENT-->
        </div> <!--PAGE REGION CONTENT-->   
        </div> <!--PAGE REGION-->
    </div> <!--PAGE-->
    </body>
</html>
