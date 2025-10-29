
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
        
        //session.setAttribute("Uname", "Sunil");
        String name=request.getParameter("named");
        String cid=request.getParameter("cid");
        String ftype=request.getParameter("ftype");
        String dated=request.getParameter("dated");
        String desc=request.getParameter("desc");
        String cost=request.getParameter("cost");
        String ImageUpload=request.getParameter("ImageUpload");
        String fname=null,fpath=null;
       
        String uname=session.getAttribute("Uname").toString();
        
        ServletContext context = getServletContext();
        String dirName =context.getRealPath("\\Files");
        File file1 = null;
        
        try
        { 
  
            if (ServletFileUpload.isMultipartContent(request))
            {
                List<FileItem> multiparts = new ServletFileUpload(
                                         new DiskFileItemFactory()).parseRequest(request);
              
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        fname = new File(item.getName()).getName();
                        fpath=dirName+ File.separator + fname;
                        item.write( new File(dirName + File.separator + fname));
                    }
                    else
                    {
                        if(item.getFieldName().equalsIgnoreCase("named"))
                            name=item.getString();
                        else if(item.getFieldName().equalsIgnoreCase("cid"))
                            cid=item.getString();
                        else if(item.getFieldName().equalsIgnoreCase("ftype"))
                            ftype=item.getString();
                        else if(item.getFieldName().equalsIgnoreCase("dated"))
                            dated=item.getString();
                        else if(item.getFieldName().equalsIgnoreCase("desc"))
                            desc=item.getString();
                        else if(item.getFieldName().equalsIgnoreCase("cost"))
                            cost=item.getString();
                        else if(item.getFieldName().equalsIgnoreCase("ImageUpload"))
                            ImageUpload=item.getString();
                        else
                        {
                        
                        }
                            
                    }
                }
            }
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        String[] locations={"12.2828,76.6163","12.2913,76.6354","12.3059,76.5976","12.2603,76.6390","12.3200,76.6300","12.3038053,76.6624146","12.3339,76.6769","12.331,76.7005"};
        Random random = new Random();
        int index = random.nextInt(locations.length);
        PreparedStatement st=con.prepareStatement("insert into filedata values(?,?,?,?,?,?,?,?,?,?)");
            st.setString(1,cid);
    st.setString(2,name);
		st.setString(3,ftype);
		st.setString(4,dated);
		st.setString(5,desc);
		st.setString(6,fname);
		st.setString(7,fpath);
		st.setString(8,uname);
		st.setString(9,cost);
		st.setString(10,locations[index]);
		st.executeUpdate();
                %>
                <script>
alert("Book Uploaded Successfully !!!");
window.location='uploadfile.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>