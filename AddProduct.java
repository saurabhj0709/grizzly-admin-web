import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class AddProduct extends HttpServlet {
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n1=request.getParameter("name1");
		String n2=request.getParameter("name2");
		String n3=request.getParameter("name3");
		String n4=request.getParameter("name4");
		String n5=request.getParameter("name5");
		// Connect to mysql and verify username password
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost/grizzly", "root", "Sister@0709"); // gets a new connection
		
		String sql = "Insert into product values(?,?,?,?,?)";
		PreparedStatement pstmt = c.prepareStatement(sql); 
		
		pstmt.setString(1, n1);
		pstmt.setString(2, n2);
		pstmt.setString(3, n3);
		pstmt.setString(4, n4);
		pstmt.setString(5, n5);
		
		pstmt.executeUpdate();
		RequestDispatcher rd = request.getRequestDispatcher("Product.jsp");
		rd.forward(request, response);
		
		System.out.println("Query Executed !");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}