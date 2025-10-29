
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
        
        String bid=request.getParameter("bid");
        String review=request.getParameter("review");
        String uname=session.getAttribute("Uname").toString();
        
        PreparedStatement st=con.prepareStatement("insert into reviews(bid,review,reviewedby) values(?,?,?)");
            st.setString(1,bid);
    st.setString(2,review);
    st.setString(3,uname);
		st.executeUpdate();
                %>
                <script>
alert("Review stored successfully !!!");
window.location='custpage.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>