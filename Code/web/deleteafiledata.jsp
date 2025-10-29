
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
        
        String uname=request.getParameter("Fid");
        
        PreparedStatement st=con.prepareStatement("delete from filedata where Fid=?");
            st.setString(1,uname);
		st.executeUpdate();
                %>
                <script>
alert("File removed successfully !!!");
window.location='managefiles.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>