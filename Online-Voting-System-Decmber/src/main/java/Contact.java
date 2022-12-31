

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class Contact
 */
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Contact() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String name = request.getParameter("uName");
		String number = request.getParameter("pNumber");
		String email = request.getParameter("email");
		String comments = request.getParameter("comments");
		
		try {
			
			PreparedStatement st = con.prepareStatement("insert into contact(uName,pNumber,email,cmnt)values('"+name+"','"+number+"','"+email+"','"+comments+"')");
			st.executeUpdate();
			response.sendRedirect("index.jsp");	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
