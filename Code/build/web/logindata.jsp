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
        if(uname.toLowerCase().equals("admin") && pswd.toLowerCase().equals("admin"))
        {
            session.setAttribute("Uname",uname);
            response.sendRedirect("adminpage.jsp");            
        }
        else
        {
 	//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	//Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
	int indicator=0;
        PreparedStatement st=con.prepareStatement("select * from userdata where Uname=? and Pswd=? and UStatus='Approved'");
	st.setString(1,uname);
	st.setString(2,pswd);
	ResultSet rs=st.executeQuery();
	if(rs.next()){	
            session.setAttribute("Uname",uname);
            String utype=rs.getString(9);
            String stat=rs.getString(8);
            if(rs.getString(9).equals("Publisher") && rs.getString(8).equals("Approved"))
            {
                response.sendRedirect("userpage.jsp");
            }
            if(rs.getString(9).equals("Merchant") && rs.getString(8).equals("Approved"))
            {
                response.sendRedirect("merchantpage.jsp");
            }
            if(rs.getString(9).equals("Customer") && rs.getString(8).equals("Approved"))
            {
                response.sendRedirect("custpage.jsp");
            }
        }
        else
        { 
            %>
             <script>
alert("Invalid Credentials !!!");
window.location='login.jsp';
</script>
            <%
            //response.sendRedirect("login.jsp");
        }
        }
	%>