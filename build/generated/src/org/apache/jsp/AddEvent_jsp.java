package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddEvent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <link rel=\"stylesheet\" media=\"screen\" type=\"text/css\" href=\"res/datepicker/css/datepicker.css\" />\n");
      out.write("       <link rel=\"stylesheet\" type=\"text/css\" href=\"res/timepicker/timePicker.css\" />       \n");
      out.write("       \n");
      out.write("       <script type=\"text/javascript\" src=\"res/scripts/jquery-1.8.3.min.js\"></script>        \n");
      out.write("       <script type=\"text/javascript\" src=\"res/datepicker/js/jquery.js\"></script>   \n");
      out.write("       <script type=\"text/javascript\" src=\"res/scripts/jquery.validate.js\"></script>       \n");
      out.write("       <script type=\"text/javascript\" src=\"res/datepicker/js/datepicker.js\"></script>\n");
      out.write("       <script type=\"text/javascript\" src=\"res/timepicker/jquery.timePicker.js\"></script>\n");
      out.write("       <script type=\"text/javascript\" src=\"res/scripts/add_event.js\"></script>\n");
      out.write("       \n");
      out.write("        <title>Add Event</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <div id=\"content\" name=\"content\">\n");
      out.write("            <form id=\"details\" name=\"details\" action=\"SubmitEvent.jsp\" method=\"POST\">\n");
      out.write("             <div id=\"geninfo\">\n");
      out.write("                 <h3>General Information</h3>\n");
      out.write("                 <p> Event Name:\n");
      out.write("                     <input type=\"text\" id=\"name\" name=\"name\" required=\"required\" maxlength=\"64\"/> </p>\n");
      out.write("                 <p> Venue:\n");
      out.write("                 <input type=\"text\" id=\"venue\" name=\"venue\" required=\"required\" maxlength=\"64\"/> </p>\n");
      out.write("             </div>\n");
      out.write("             <div id=\"tnd\">   \n");
      out.write("                <h3>Time and Date</h3>\n");
      out.write("                <p> Start Date:\n");
      out.write("    \t\t<input class=\"startDate\" id=\"startDate\" name=\"sdate\" value=\"11/14/2012\" /></p>\n");
      out.write("                 <p> End Date:\n");
      out.write("                    <input class=\"endDate\" id=\"endDate\" name=\"edate\" value=\"11/14/2012\" /></p>\t\t\t\t\t\n");
      out.write("                 <p>Start Time:\n");
      out.write("                     <input class=\"startTime\" id=\"startTime\" name=\"stime\"/> </p>\t\n");
      out.write("                 <p>End Time:\n");
      out.write("                    <input class=\"endTime\" id=\"endTime\" name=\"etime\"/> </p>\n");
      out.write("             </div>\n");
      out.write("             <h3>Details</h3>\n");
      out.write("             <textarea cols=\"40\" id=\"edels\" name=\"edels\" maxlength=\"140\">\n");
      out.write("             </textarea>\n");
      out.write("             <br>\n");
      out.write("             <input type=\"submit\" value=\"Submit\"/>\n");
      out.write("          \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
