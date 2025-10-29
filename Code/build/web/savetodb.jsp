
<%@page import="java.util.Random"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.File"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*, org.apache.commons.fileupload.servlet.ServletFileUpload, org.apache.commons.fileupload.disk.DiskFileItemFactory, org.apache.commons.io.FilenameUtils" %>
<%
    Connection con = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "smartbook";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        try {
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected to the database");
    } catch (Exception e) {
            e.printStackTrace();
        }
        
        String bid=request.getParameter("pid");
        String cost=request.getParameter("cost");
        String quan=request.getParameter("quan");
        String tcost=request.getParameter("tcost");
        String uname=session.getAttribute("Uname").toString();
        
        
        PreparedStatement st=con.prepareStatement("insert into cartdata values(?,?,?,?,?)");
            st.setString(1,bid);
            st.setString(2,cost);
		st.setString(3,quan);
		st.setString(4,tcost);
		st.setString(5,uname);
		st.executeUpdate();
                %>
                <script>
alert("Purchased Successfully !!!");
window.open('https://payu.in/web/3A607DCB3F8265A30913C67E1FF82315', '_blank');
//window.location='custpage.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>