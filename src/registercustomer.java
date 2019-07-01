
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
@WebServlet("/register5")
public class registercustomer extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	{
		String cname=req.getParameter("cname");
		String caddress=req.getParameter("caddress");
		String cphone=req.getParameter("cphone");
		String cemail=req.getParameter("cemail");
		String cpass=req.getParameter("cpass");
		
	try {	
	Connection con=new Connectionis().connect();
	PreparedStatement p=con.prepareStatement("insert into customer (name,address,phone,email,password)values(?,?,?,?,?)");
    p.setString(1, cname);
	p.setString(2, caddress);
	p.setString(3, cphone);
	p.setString(4, cemail);
	p.setString(5, cpass);
	p.executeUpdate();
	
	String from="puskal.javadeveloper@gmail.com";
	String to=req.getParameter("cemail");
	String host="localhost";
		Properties prop= new Properties();
		prop.put("mail.smtp.auth","true");
		prop.put("mail.smtp.starttls.enable","true");
		prop.put("mail.smtp.host","smtp.gmail.com");
		prop.put("mail.smtp.port",587);
	
		Session sess= Session.getInstance(prop, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from,"sorry i am unabel to disclose my password -puskal khadka");}
		});
		MimeMessage msg= new MimeMessage(sess);
		msg.setFrom(new InternetAddress(from));
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		msg.setSubject("Account Regsitratin");
		msg.setText("conratulation ! Account register successful");
		Transport.send(msg);
		
	
	
	PrintWriter out=res.getWriter();
	out.println("Register Successful");
	}
	catch(Exception e) {
		e.printStackTrace();
	}

}
}
