<%-- 
    Document   : SubmitEvent
    Created on : 11 27, 12, 4:38:00 PM
    Author     : Bien Mandac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.EventOps,controllers.StafferOps,models.Staffer,models.Event,java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/css/jquery.autocomplete.css" rel="stylesheet">   
        <link href="res/metro/css/modern.css" rel="stylesheet">
        <link href="res/css/main_style.css" rel="stylesheet">           
        <script type="text/javascript" src="res/scripts/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="res/metro/javascript/dropdown.js"></script>          
        <script type="text/javascript" src="res/scripts/jquery.autocomplete.js"></script>

        <script>
            $(document).ready(function(){
                $("#staffer").autocomplete("getStaffers.jsp");
            });
            </script>
        <title>Event Submit</title>
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
            </div> <!--PAGE REGION-->
            <div class="page-region-content">
                
             <%  
                //register event
                Event e = new Event();
                boolean stat;
                String name = request.getParameter("name");
                String venue= request.getParameter("venue");
                String sdate= request.getParameter("sdate");
                String edate= request.getParameter("edate");
                String stime= request.getParameter("stime");
                String etime= request.getParameter("etime");
                
                e.setName(name);
                e.setVenue(venue);
                e.setSDate(sdate);
                e.setEDate(edate);
                e.setSTime(stime);
                e.setETime(etime);
                
                stat = EventOps.AddEvent(e);
                
                if(stat) {%>
                        <h2>Success!</h2>
                        <p> <%=request.getParameter("name")%> has been registered!
                            Consider assigning staffers to cover this event.
                        </p>
                         Assign Staffers: 
                        <input type="text" id="staffer" name="staffer"/>
                   <%}
                else
                {%>
                    <h3>Fail</h3>
                <%}  

            %>                

            </div>
        </div><!--PAGE-->
        
        
    </body>
</html>
