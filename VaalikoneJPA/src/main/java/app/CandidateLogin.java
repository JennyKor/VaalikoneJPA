package app;

import java.io.IOException;
import static java.util.Objects.isNull;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.Dao;
import data.User;

/**
 * Login servlet for candidates.
 * @author Jenny
 *
 */
@WebServlet(urlPatterns = {"/login"})
public class CandidateLogin extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public CandidateLogin() {
		super();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		if (request.getParameter("logout")!=null ) {
			HttpSession session = request.getSession(true);
			session.invalidate();
			session = null;
		}
		response.sendRedirect("/candidate_login.jsp");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String pass = request.getParameter("password");
		HttpSession session = request.getSession(true);
		User user = Dao.findUser(name, pass);
		
		if(user == null) {
			response.sendRedirect("/candidate_login.jsp");
			String message = "Wrong username or password.";
			session.setAttribute("error", message);
			
		}
		
		else {
			session.setAttribute("candidate", user);
			response.sendRedirect("/candidate/index.jsp");
		}

//		if(name.compareTo("kayttaja")==0 && pass.compareTo("salasana")==0) {
//			HttpSession session = request.getSession(true);
//			User user = new User(name, pass);
//			session.setAttribute("candidate", user);
//			response.sendRedirect("/candidate/index.jsp");
//		}
//		
//		else {
//			response.sendRedirect("/candidate_login.jsp");
//		}
	}
	

	
}
