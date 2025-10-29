
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
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
        
        String Fid=request.getParameter("Fid");
        String Fname=request.getParameter("Fname");
        String ReqBy=request.getParameter("ReqBy");
        
        PreparedStatement st=con.prepareStatement("select Fkey from request where Fid='"+Fid+"' and Fname='"+Fname+"' and ReqBy='"+ReqBy+"'");
        String Key="";
        String Email="";
         ResultSet rs=st.executeQuery();
	if(rs.next()){	
            Key=rs.getString(1).toString();
        }
        st=con.prepareStatement("select Email from registration where Uname='"+ReqBy+"'");
         ResultSet rs1=st.executeQuery();
	if(rs1.next()){	
            Email=rs1.getString(1).toString();
        }
            
            
            String emailid=Email;
            //System.out.println(emailid);




            String host="", user="", pass="";

            host ="smtp.gmail.com"; //"smtp.gmail.com";

            user ="projectsecure07@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

            pass ="ozeenaqhygcdbnkn"; //Your gmail password

            String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

            String to =emailid;//"madhsunil@gmail.com";
            String from ="projectsecure07@gmail.com"; //Email id of the recipient

            String subject ="welcome";

            //session.setAttribute("id",userid);
            //session.setAttribute("password",c);
            //session.setAttribute("emailid",emailid);
            boolean sessionDebug = true;

            String messageText ="Secret Key for File is=<b>"+Key+"</b>";



            Properties props = System.getProperties();
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.put("mail.host", host);
            props.put("mail.transport.protocol.", "smtp");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.", "true");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.socketFactory.fallback", "false");
            //props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
            props.put("mail.smtp.starttls.enable", "true");

            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject);
            msg.setContent(messageText, "text/html"); // use setText if you want to send text
            Transport transport = mailSession.getTransport("smtp");
            transport.connect(host, user, pass);
            try {
              //  transport.sendMessage(msg,address);
            transport.sendMessage(msg, msg.getAllRecipients());
            //out.println("message successfully sended"); // assume it was sent
            //response.sendRedirect("request2.jsp");
            }
            catch (Exception err) {

            System.out.println("message not successfully sended"); // assume it?s a fail
            }
            transport.close();

                %>
                <script>
alert("Mail sent successfully !!!");
window.location='mrequest.jsp';
</script>
                <%
//response.sendRedirect("register.jsp");
%>