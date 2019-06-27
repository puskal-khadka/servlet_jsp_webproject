package account;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BankOperation/pin")
public class pinchange extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String p1=req.getParameter("p1");
		String p2=req.getParameter("p2");
		try {
		    if(p1.equals(p2)) {
		    	HttpSession session=req.getSession();
			   	String acc=(String)session.getAttribute("caccount");
				 Connection con=new Connectionis().connect();	 
			     PreparedStatement ps=con.prepareStatement("update customer set password=? where Account_no=?");
			     ps.setString(1, p1);
			     ps.setString(2, acc);
			     ps.executeUpdate();
				 req.setAttribute("msg", "pin changes successfully");
		     }
		    else {
		    	req.setAttribute("msg", "passsword doesnot match");
			    }
		      RequestDispatcher rd=req.getRequestDispatcher("/BankOperation/pinchange.jsp");
			  rd.forward(req, res);
              }
		catch(Exception e) {
			e.printStackTrace();
		}
   }
}


