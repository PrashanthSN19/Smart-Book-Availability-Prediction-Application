
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
        
        String uname=request.getParameter("uname");
        String pswd=request.getParameter("pswd");
        String name=request.getParameter("named");
        String age=request.getParameter("age");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
        String phone=request.getParameter("phone");
        String utype=request.getParameter("utype");
        String addr=request.getParameter("addr");
        
        PreparedStatement st=con.prepareStatement("insert into userdata values(?,?,?,?,?,?,?,?,?,?)");
            st.setString(1,uname);
    st.setString(2,pswd);
	    st.setString(3,name);
		st.setString(4,age);
		st.setString(5,email);
		st.setString(6,gender);
		st.setString(7,phone);
		st.setString(8,"Pending");
		st.setString(9,utype);
		st.setString(10,addr);
		st.executeUpdate();
                %>
                <script>
alert("Data stored successfully !!!");
window.location='register.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>