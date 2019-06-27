import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
@WebServlet("/login2")
public class loginuser extends HttpServlet {
public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
	PrintWriter out=res.getWriter();
	String email=req.getParameter("uemail");
	String pass=req.getParameter("upass");
	try {
		Connection con=new Connectionis().connect();
		PreparedStatement p=con.prepareStatement("select * from employee where email=? and password=?");
		p.setString(1, email);
		p.setString(2, pass);
	ResultSet rs=p.executeQuery();
	if(rs.next())
	{
		HttpSession session=req.getSession();
		session.setAttribute("email", email);
	res.sendRedirect("userwork.jsp");
	}
	else {
		out.println("fail");
	}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}
}
