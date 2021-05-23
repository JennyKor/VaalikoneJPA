package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.Dao;
import data.Candidate;
import data.User;

/**
 * Login servlet for candidates.
 * @author Jenny
 *
 */
@WebServlet(urlPatterns = {"/candlogin"})
public class CandidateLogin extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private CryptMain crypt = new CryptMain();
	
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
		
		String cpass = crypt.hashPassword(pass);
		
		HttpSession session = request.getSession(true);
		User user = Dao.findUser(name, cpass);
		
		if(user == null) {
			response.sendRedirect("/candidate_login.jsp");
			String message = "Check your username or password.";
			session.setAttribute("error", message);	
		}	
		else {
			int id = user.getId();
			Candidate candidate = Dao.findCandidate(id);
			session.setAttribute("candidate", candidate);
			session.setAttribute("user", user);
			response.sendRedirect("/candidate/index.jsp");
		}

	}

}
