<%-- 
    Document   : getStaffers
    Created on : 11 28, 12, 4:53:48 AM
    Author     : Bien Mandac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.StafferOps,models.Staffer,java.util.ArrayList,java.util.Iterator"%>
<%
    ArrayList<Staffer> stafflist = new StafferOps().getStafferList();
    
    Iterator<Staffer> iterator = stafflist.iterator();
    Staffer s;
    while(iterator.hasNext())
     {  
        s = iterator.next();
        String str = s.getFname()+" "+s.getLname()+":"+Integer.toString(s.getStaffID()) ;
        out.println(str);
    }
%>