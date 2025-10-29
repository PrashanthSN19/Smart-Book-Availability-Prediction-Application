package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.sql.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.io.FilenameUtils;

public final class downloadfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Smart Book Availability</title>\n");
      out.write("\n");
      out.write("    <!--/tags -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"keywords\" content=\"Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"\n");
      out.write("        media=\"all\" />\n");
      out.write("    <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" />\n");
      out.write("</head>\n");
 String uname=session.getAttribute("Uname").toString(); if(uname.equals("")){ response.sendRedirect("login.jsp"); } 
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"min-vh-100 d-flex flex-column\"\n");
      out.write("            style=\"background-image:url('images/bg1.jpg'); background-repeat: no-repeat; background-size: cover;\">\n");
      out.write("\n");
      out.write("            <nav class=\"navbar navbar-expand-lg bg-white border-bottom border-secondary py-3\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <a class=\"navbar-brand text-uppercase fw-bold fs-4\" href=\"#\"><i\n");
      out.write("                            class=\"fa-solid fa-shield-halved\"></i>\n");
      out.write("                        Smart Book Availability</a>\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\"\n");
      out.write("                        data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\"\n");
      out.write("                        aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                        <ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link fs-5\" aria-current=\"page\" href=\"userpage.jsp\">Home</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link fs-5\" href=\"uploadfile.jsp\">Upload File</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link fs-5\" href=\"managemyfile.jsp\">Manage Users</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <!-- active fw-bold text-decoration-underline link-offset-2 -->\n");
      out.write("                                <a class=\"nav-link fs-5\" href=\"mrequest.jsp\">My Requests </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link fs-5 \" href=\"request.jsp\">Request</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link fs-5\" href=\"login.jsp\">Logout</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"container py-5 my-5\">\n");
      out.write("                <div class=\"row d-flex justify-content-center align-items-center\">\n");
      out.write("                    <div class=\"col-md-11\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"row g-0 mb-4\">\n");
      out.write("                                <div class=\"col-md-12 d-flex align-items-center\">\n");
      out.write("                                    <div class=\"card-body p-md-4 py-4 mx-md-4 mx-2\">\n");
      out.write("\n");
      out.write("                                        <h4\n");
      out.write("                                            class=\"mb-5 text-center  fw-bold text-decoration-underline link-offset-2 text-capitalize\">\n");
      out.write("                                            Files Search</h4>\n");
      out.write("\n");
      out.write("                                        <form id=\"form1\" runat=\"server\" method=\"get\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("\n");
      out.write("                                                <div class=\"col-md-8\">\n");
      out.write("                                                    <label for=\"data\" class=\"form-label\">Enter Key :</label>\n");
      out.write("                                                    <input type=\"text\" name=\"data\" id=\"data\"\n");
      out.write("                                                        class=\"form-control shadow-none\" />\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <label for=\"data\" class=\"form-label d-block\">&nbsp;</label>\n");
      out.write("                                                    <input type=\"submit\" class=\"btn btn-primary shadow-none w-100\"\n");
      out.write("                                                        value=\"Fetch\" />\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            ");
 Connection con=null; 
                                            String url="jdbc:mysql://localhost:3306/" ; 
                                            String dbName="smartbook" ; 
                                            String driver="com.mysql.jdbc.Driver" ; 
                                            String userName="root" ; 
                                            String password="" ; 
                                            try 
                                            {
                                                Class.forName(driver).newInstance(); con=DriverManager.getConnection(url + dbName, userName, password); System.out.println("Connected to the database"); 
                                            }
                                            catch 
                                                    (Exception e) 
                                            { 
                                                e.printStackTrace(); 
                                            } String
                                                fname=request.getParameter("data"); if(fname!=null) { ResultSet
                                                res=null; //session.setAttribute("Uname","Sunny Boyka6288"); //String
                                                uname=session.getAttribute("Uname").toString(); 
                                                PreparedStatement st=con.prepareStatement("select Fname from request where Fkey='"+fname+"'");
 res=st.executeQuery();
 while(res.next())
 {
     response.setContentType(" text/html"); String fnname=res.getString(1).toString(); ServletContext
                                                context=getServletContext(); String
                                                dirName=context.getRealPath("\\Files"); //fnname=dirName+"\\"+fnname;
                                                response.setContentType("APPLICATION/OCTET-STREAM");
                                                response.setHeader("Content-Disposition", "attachment; filename=\""
				+ fnname + " \""); FileInputStream fis=new FileInputStream(dirName+"\\"+fnname); String
                                                mimeType=context.getMimeType(dirName+"\\"+fnname); /*FileInputStream
                                                fileInputStream=new FileInputStream(dirName+"\\"+fnname); int i; while
                                                ((i=fileInputStream.read()) !=-1) { out.write(i); }
                                                fileInputStream.close(); out.close();*/ ServletOutputStream
                                                os=response.getOutputStream(); byte[] bufferData=new byte[1024]; int
                                                read=0; while((read=fis.read(bufferData))!=-1){ os.write(bufferData, 0,
                                                read); } os.flush(); os.close(); fis.close(); } } 
      out.write("\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"flex-grow-1\"></div>\n");
      out.write("\n");
      out.write("            <footer class=\"bg-secondary text-uppercase text-white text-center\">\n");
      out.write("                <script>document.write(new Date().getFullYear());</script> © Smart Book Availability. All Rights Reserved\n");
      out.write("            </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.7.1.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
