import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
@WebServlet("/login5")
public class logincustomer extends HttpServlet {
public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
	PrintWriter out=res.getWriter();
	String caccount=req.getParameter("caccount");
	String cpass=req.getParameter("cpass");
	try {
		Connection con=new Connectionis().connect();
		PreparedStatement p=con.prepareStatement("select * from customer where Account_no=? and password=?");
		p.setString(1, caccount);
		p.setString(2, cpass);
	ResultSet rs=p.executeQuery();
	if(rs.next())
	{
		HttpSession session=req.getSession();
		session.setAttribute("caccount", caccount);
	res.sendRedirect("customerwork.jsp");
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
