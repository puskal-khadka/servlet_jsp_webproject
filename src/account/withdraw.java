package account;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BankOperation/withdraw")
public class withdraw extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int tot;
		int withdraw=Integer.parseInt(req.getParameter("amount"));
		PrintWriter out=res.getWriter();
		try {
			HttpSession session=req.getSession();
			String acc=(String)session.getAttribute("caccount");
			  Connection con=new Connectionis().connect();	 
		PreparedStatement ps=con.prepareStatement("select * from customer where Account_no=?");
		ps.setString(1, acc);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
		
			int bal=rs.getInt(7);
			if(withdraw<0 )
			{
				req.setAttribute("msg", "Invalid input");
			}
			else if(bal==0)
			{
				req.setAttribute("msg", "Sorry! you have 0 Balance");
			}
			else if(withdraw>bal) {
				req.setAttribute("msg", "Sorry! you haven't enough money");
			}
			else {
			 tot=bal-withdraw;
			 PreparedStatement ps1=con.prepareStatement("update customer set balance=? where Account_no=?");
			 ps1.setInt(1, tot);
			 ps1.setString(2, acc);
			 ps1.executeUpdate();
			  req.setAttribute("msg", "Amount successfully withdrw");
             }
			   RequestDispatcher rd=req.getRequestDispatcher("/BankOperation/withdraw.jsp");
			 rd.forward(req, res);
           }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}

