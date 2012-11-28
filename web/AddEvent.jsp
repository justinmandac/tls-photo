<%-- 
    Document   : AddEvent
    Created on : 11 27, 12, 3:04:49 PM
    Author     : Student
    Date Picker c/o Stefan Petre
    Time Picker c/o Perifer Design
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" media="screen" type="text/css" href="res/datepicker/css/datepicker.css" />
       <link rel="stylesheet" type="text/css" href="res/timepicker/timePicker.css" />       
        <link href="res/metro/css/modern.css" rel="stylesheet">
        <link href="res/css/main_style.css" rel="stylesheet">   
        <script type="text/javascript" src="res/scripts/jquery-1.8.3.min.js"></script>  
        <script type="text/javascript" src="res/metro/javascript/dropdown.js"></script>            
       <script type="text/javascript" src="res/datepicker/js/jquery.js"></script>       
       <script type="text/javascript" src="res/datepicker/js/datepicker.js"></script>  
       <script type="text/javascript" src="res/scripts/jquery.validate.js"></script>  
       <script type="text/javascript" src="res/timepicker/jquery.timePicker.js"></script>
       <script type="text/javascript" src="res/scripts/add_event.js"></script>
       
        <title>Add Event</title>
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
             <h2>Add Event</h2>
    <form id="details" name="details" action="SubmitEvent.jsp" method="POST">             
                <div class="grid" id="general">      
                    <div class="row offset1"> 
                        <h3>General Information</h3>  
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                            Event Name:
                        </div>
                        <div class="span6" id="field">
                           <input type="text" id="name" name="name" required="required" maxlength="64"/>  
                        </div>                
                    </div> <!--INPUT-->
                    
                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                           Venue:
                        </div>
                        <div class="span6" id="field">
                            <input type="text" id="venue" name="venue" required="required" maxlength="64"/> 
                        </div>                
                    </div> <!--INPUT-->                          
               </div> <!--GENERAL:GRID-->   
                <div class="grid" id="tnd">      
                    <div class="row offset1"> 
                        <h3>Time and Date</h3>
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                             Start Date:
                        </div>
                        <div class="span6" id="field">
                        <input class="startDate" id="startDate" name="sdate" value="11/14/2012" readonly="true"/>
                        </div>                
                    </div> <!--INPUT-->
                    
                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                            End Date: 
                        </div>
                        <div class="span6" id="field">
                          <input class="endDate" id="endDate" name="edate" value="11/14/2012" readonly="true"/>
                        </div>                
                    </div> <!--INPUT-->    
                    
                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                              Start Time:
                        </div>
                        <div class="span6" id="field">
                         <input class="startTime" id="startTime" name="stime" readonly="true"/> 	
                        </div>                
                    </div> <!--INPUT--> 
                    
                    <div class="row offset1" id="input">
                        <div class="span3" id="text">
                             End Time:
                        </div>
                        <div class="span6" id="field">
                         <input class="endTime" id="endTime" name="etime" readonly="true"/> 	
                        </div>                
                    </div> <!--INPUT-->                      
               </div> <!--TND:GRID-->   
               
                <div class="grid" id="misc">      
                    <div class="row offset1"> 
                        <h3>Details</h3>
                    </div>
                    <div class="row offset1 "id="input">
                        <div class="span3" id="text">
                          
                        </div>
                        <div class="span6" id="field">
                             <textarea cols="40" id="edels" name="edels" maxlength="140">
                             Details/Notes here.
                            </textarea>
                        </div>                
                    </div> <!--INPUT-->
                    
                    <div class="row offset1" id="input">
                        <br>
                        <br>
                             <input type="submit" value="Submit"/>
                    </div> <!--INPUT-->                          
               </div> <!--MISC:GRID-->                 
         </form>
         </div> <!--PAGE REGION CONTENT-->
         </div> <!--PAGE REGION-->
        </div> <!--PAGE-->

</html>
