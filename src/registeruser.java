
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Properties;
@WebServlet("/register1")
public class registeruser extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	{
		String uname=req.getParameter("uname");
		String ubranch=req.getParameter("ubranch");
		String uaddress=req.getParameter("uaddress");
		String uphone=req.getParameter("uphone");
		String upass=req.getParameter("upass");
		String uemail=req.getParameter("uemail");
		
	try {	
	Connection con=new Connectionis().connect();
	PreparedStatement p=con.prepareStatement("insert into employee (name,branch,address,phone,password,email)values(?,?,?,?,?,?)");
    p.setString(1, uname);
	p.setString(2, ubranch);
	p.setString(3, uaddress);
	p.setString(4, uphone);
	p.setString(5, upass);
	p.setString(6, uemail);
	p.executeUpdate();
	
	//emai
	String from="puskal.javadeveloper@gmail.com";
	String to=req.getParameter("uemail");
	String host="localhost";
		Properties prop= new Properties();
		prop.put("mail.smtp.auth","true");
		prop.put("mail.smtp.starttls.enable","true");
		prop.put("mail.smtp.host","smtp.gmail.com");
		prop.put("mail.smtp.port",587);
	
		Session sess= Session.getInstance(prop, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from,"00welcome00");}
		});
		MimeMessage msg= new MimeMessage(sess);
		msg.setFrom(new InternetAddress(from));
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		msg.setSubject("Account Regsiter Successful");
		msg.setText("Account register successful");
		Transport.send(msg);
		
	
	
	PrintWriter out=res.getWriter();
	out.println("Register Successful");
	}
	catch(Exception e) {
		e.printStackTrace();
	}

}
}
