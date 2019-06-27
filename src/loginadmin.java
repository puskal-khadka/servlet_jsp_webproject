import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

public class loginadmin extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String uname=req.getParameter("uname");
		String pass=req.getParameter("pass");
		
		if(uname.equalsIgnoreCase("admin") && pass.equals("puskal123"))
		{
			HttpSession session=req.getSession();
			session.setAttribute("name", uname);
			res.sendRedirect("adminwork.jsp");
		//or,	RequestDispatcher rd=req.getRequestDispatcher("adminwork.jsp");
			//rd.forward(req, res);	
		}
		else
		{
		    res.sendRedirect("loginadmin.jsp");
		   
		}		
		
	}
}
