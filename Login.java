import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		
		// Connect to mysql and verify username password
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost/grizzly", "root", "Sister@0709"); // gets a new connection
		PreparedStatement ps = c.prepareStatement("select username,pass from users where username=? and pass=?");
		ps.setString(1, un);
		ps.setString(2, pw);
		
		ResultSet rs = ps.executeQuery();
		
		System.out.println("Query executed..");
		
	
		while (rs.next()) {
			
			RequestDispatcher rd = request.getRequestDispatcher("Product.jsp");
			rd.forward(request, response);
			
		}
		System.out.println("Username and Password Incorrect !");
		response.sendRedirect("index.html");
		return;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}