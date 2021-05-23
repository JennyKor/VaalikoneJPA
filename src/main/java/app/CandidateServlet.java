package app;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import data.Candidate;

/**
 * Servlet for Candidate pages, excluding login.
 * @author Jenny
 *
 */
@WebServlet(urlPatterns = {"/readcandidate", "/updatecandidate"})
public class CandidateServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
		      throws IOException, ServletException {
			  doGet(request, response);
		  }
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Candidate candidate = (Candidate) session.getAttribute("candidate");
		int id = candidate.getEhdokas_id();
		
		Candidate c = new Candidate();
		String path = request.getServletPath();
		
		switch (path) {
		case "/updatecandidate":
			c = updateCandidate(request);
			session.setAttribute("candidate", c); //updating httpsession so that the index page gets updated info
			break;
			
		case "/readcandidate":
			c = readCandidate(request, id);
			request.setAttribute("candinfo", c);
			RequestDispatcher rd = request.getRequestDispatcher("./candidate/updateinfo.jsp");
			rd.forward(request, response);
		}
		request.setAttribute("candidate", c);
		RequestDispatcher rd = request.getRequestDispatcher("./candidate/index.jsp");
		rd.forward(request, response);

	}
	
	private Candidate readCandidate(HttpServletRequest request, int id) {
		String uri = "http://localhost:8080/rest/candidateservice/readcandidate/"+id;
		Client client = ClientBuilder.newClient();
		WebTarget webtar = client.target(uri);
		Builder builder = webtar.request();
		Candidate c = builder.get(Candidate.class);
		return c;	
	}
	
	private Candidate updateCandidate(HttpServletRequest request) {
		Candidate candidate = new Candidate(request.getParameter("id"), request.getParameter("userid"), request.getParameter("name"), request.getParameter("lastname"),
				request.getParameter("age"), request.getParameter("party"), request.getParameter("muncipality"),
				request.getParameter("trade"));
		String uri = "http://localhost:8080/rest/candidateservice/updatecandidate";
		Client client = ClientBuilder.newClient();
		WebTarget webtar = client.target(uri);
		Builder builder = webtar.request();
		
		Entity<Candidate> e = Entity.entity(candidate, MediaType.APPLICATION_JSON);
		Candidate returned = builder.put(e, Candidate.class);
		return returned;	
	}
}
