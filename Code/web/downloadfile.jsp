 <%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*, org.apache.commons.fileupload.servlet.ServletFileUpload, org.apache.commons.fileupload.disk.DiskFileItemFactory, org.apache.commons.io.FilenameUtils" %>

<!DOCTYPE html>
<html>

<head>
    <title>Smart Book Availability</title>

    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.css" rel="stylesheet" type="text/css"
        media="all" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
</head>
<% String uname=session.getAttribute("Uname").toString(); if(uname.equals("")){ response.sendRedirect("login.jsp"); } %>

    <body>
        <div class="min-vh-100 d-flex flex-column"
            style="background-image:url('images/bg1.jpg'); background-repeat: no-repeat; background-size: cover;">

            <nav class="navbar navbar-expand-lg bg-white border-bottom border-secondary py-3">
                <div class="container-fluid">
                    <a class="navbar-brand text-uppercase fw-bold fs-4" href="#"><i
                            class="fa-solid fa-shield-halved"></i>
                        Smart Book Availability</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link fs-5" aria-current="page" href="userpage.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5" href="uploadfile.jsp">Upload File</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5" href="managemyfile.jsp">Manage Users</a>
                            </li>
                            <li class="nav-item">
                                <!-- active fw-bold text-decoration-underline link-offset-2 -->
                                <a class="nav-link fs-5" href="mrequest.jsp">My Requests </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5 " href="request.jsp">Request</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5" href="login.jsp">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>


            <div class="container py-5 my-5">
                <div class="row d-flex justify-content-center align-items-center">
                    <div class="col-md-11">
                        <div class="card">
                            <div class="row g-0 mb-4">
                                <div class="col-md-12 d-flex align-items-center">
                                    <div class="card-body p-md-4 py-4 mx-md-4 mx-2">

                                        <h4
                                            class="mb-5 text-center  fw-bold text-decoration-underline link-offset-2 text-capitalize">
                                            Files Search</h4>

                                        <form id="form1" runat="server" method="get">
                                            <div class="row">

                                                <div class="col-md-8">
                                                    <label for="data" class="form-label">Enter Key :</label>
                                                    <input type="text" name="data" id="data"
                                                        class="form-control shadow-none" />
                                                </div>

                                                <div class="col-md-4">
                                                    <label for="data" class="form-label d-block">&nbsp;</label>
                                                    <input type="submit" class="btn btn-primary shadow-none w-100"
                                                        value="Fetch" />
                                                </div>

                                            </div>
                                            <% Connection con=null; 
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
                                                read); } os.flush(); os.close(); fis.close(); } } %>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <div class="flex-grow-1"></div>

            <footer class="bg-secondary text-uppercase text-white text-center">
                <script>document.write(new Date().getFullYear());</script> © Smart Book Availability. All Rights Reserved
            </footer>


        </div>

        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>

</html>