
<%@page import="java.util.Random"%>
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
        
        String uname=session.getAttribute("Uname").toString();
        String fid=request.getParameter("Fid");
        String own=request.getParameter("Own");
        String fname=request.getParameter("fname");
        
        Random r = new Random();
int low = 111111;
int high = 999999;
int result = r.nextInt(high-low) + low;
       
        PreparedStatement st=con.prepareStatement("insert into request values(?,?,?,?,?,?)");
            st.setString(1,uname);
    st.setString(2,fid);
    st.setString(3,fname);
	    st.setInt(4,result);
    st.setString(5,own);
    st.setString(6,"Pending");
		st.executeUpdate();
                %>
                <script>
alert("Request Sent Successfully !!!");
window.location='request.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>