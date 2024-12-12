package package1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "R1", urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	public static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String sid = request.getParameter("student_id");
		String p = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/club", "root", "root");
			
			String sql = "SELECT * FROM student WHERE student_id = ? AND password = ?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, sid);
			pst.setString(2, p);
			
			ResultSet rs = pst.executeQuery();
			
			if (rs.next()) {
				out.println("<script type=\"text/javascript\">");
                out.println("alert('Login Successful! Welcome " + sid + "');");
                out.println("window.location.href = 'welcome.jsp';");
                out.println("</script>");
            } else {
            	 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Invalid Student ID or Password. Please try again.');");
                 out.println("window.location.href = 'Login.jsp';");
                 out.println("</script>");            
                 }
			
		}catch (Exception e2) {
			System.out.println(e2);
		}
		out.close();
}
}