<%-- 
    Document   : AddAssignment
    Created on : 11 27, 12, 6:40:24 PM
    Author     : Student
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/metro/css/modern.css" rel="stylesheet">
        <link href="res/css/main_style.css" rel="stylesheet">           
        <link rel="stylesheet" media="screen" type="text/css" href="res/datepicker/css/datepicker.css" />
        <link rel="stylesheet" media="screen" type="text/css" href="res/css/jquery-ui.css" />
       
        <script type="text/javascript" src="res/scripts/jquery-1.8.3.min.js"></script>   
        <script type="text/javascript" src="res/metro/javascript/dropdown.js"></script>       
        <script type="text/javascript" src="res/datepicker/js/jquery.js"></script>       
        <script type="text/javascript" src="res/datepicker/js/datepicker.js"></script>
       
       
        <script type="text/javascript" src="res/scripts/jquery.mtz.monthpicker.js"></script>  
        <script type="text/javascript" src="res/scripts/add_assignment.js">   </script>
        <title>Add Assignment</title>
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
            <h2>Add Assignment</h2>
            <form id="details" method="POST" action="SubmitAssignment.jsp">
                <div class="grid" id="general">      
                    <div class="row"> 
                         <h3>General Details</h3>  
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                            Assignment Title:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="title" name="title" required="required" maxlength="64"/>     
                        </div>                
                    </div> <!--INPUT-->
	
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                            Issue:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="issue" name="issue" value="11/2012" required="required" readonly="true"/>   
                        </div>                
                    </div> <!--INPUT-->					
					
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                           Section:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="section" name="section" required="required" maxlength="4"/>   
                        </div>                
                    </div> <!--INPUT-->					
                </div>   <!--GENERAL:GRID-->    
                
                <div class="grid" id="details">      
                    <div class="row"> 
                        <h3>Deadline</h3>  
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                            Date:
                        </div>
                        <div class="span6" id="field">
                            <input class="deadline" id="deadline" name="deadline" value="11/14/2012" readonly="true"/></p>
                        </div>                
                    </div> <!--INPUT-->
					
                    <div class="row"> 
                        <h3>Details</h3>  
                    </div>					
					
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                            
                        </div>
                        <div class="span6" id="field">
                            <textarea cols="40" id="edels" name="edels" maxlength="140">
                                 </textarea>
                        </div>                
                    </div> <!--INPUT-->	
                    <div class="row offset1 "id="input">  
                        <br>
                        <br>
                        <input type="submit" value="Next"/>   
                    </div>
	</div>                
  
            </form>
            
        </div> <!--PAGE REGION CONTENT-->
        </div> <!--PAGE REGION--> 
        </div> <!--PAGE--> 

    </body>
</html>
