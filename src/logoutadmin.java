import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/logout")
public class logoutadmin extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		HttpSession session=req.getSession();
		session.removeAttribute("name");
		session.invalidate();
		res.sendRedirect("loginadmin.jsp");
	
	}
}