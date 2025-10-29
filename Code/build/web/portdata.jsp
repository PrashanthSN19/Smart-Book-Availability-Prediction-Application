
<%@ page import="java.sql.*" %>

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
         %>
                <script>
alert("Porting Initiated !!!");
</script>
                <%
        
        String name=request.getParameter("named");
        String cloud=request.getParameter("cloud");
        String dated=request.getParameter("dated");
        
        PreparedStatement st=con.prepareStatement("update filedata set Cloud='"+cloud+"' where UploadedBy='"+name+"'");
           
		st.executeUpdate();
                %>
                <script>
alert("Porting successfully done !!!");
window.location='cloudport.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>