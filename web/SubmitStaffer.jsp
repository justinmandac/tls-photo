<%-- 
    Document   : SubmitStaffer
    Created on : 11 27, 12, 1:29:56 PM
    Author     : Bien Mandac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.StafferOps,models.Staffer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/metro/css/modern.css" rel="stylesheet">
        <link href="res/css/main_style.css" rel="stylesheet">           
        <script type="text/javascript" src="res/scripts/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="res/metro/javascript/dropdown.js"></script>          
        <title>Assign Staffers</title>
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
         <div class="page-header-content">
              <%
                Staffer s = new Staffer();
                boolean stat;
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String idnum = request.getParameter("idnum");
                String pnum  = request.getParameter("pnum");
                String snum  = request.getParameter("snum");
                String email = request.getParameter("emailf");   
                s.setFname(fname);
                s.setLname(lname);
                s.setIDNum(idnum);
                s.setPContact(pnum);
                s.setSContact(snum);
                s.setEmail(email); 
                
                stat = StafferOps.AddStaffer(s);
                
                if(stat) {%>
                <h2>Success!</h2>
                <p> <%= request.getParameter("fname") %> has joined the club! </p>
                  <% }
                else
                { %>
                <h2>Boom!</h2>
                <p>Apparently, something went wrong. We've got it covered. Whatever it is. </p>
                <%}           
        %>
         </div>
            </div> <!--PAGE REGION-->
        </div><!--PAGE-->
       
    </body>
</html>
