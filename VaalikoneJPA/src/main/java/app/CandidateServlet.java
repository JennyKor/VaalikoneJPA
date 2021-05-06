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
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.client.WebTarget;
import data.Candidate;

@WebServlet(urlPatterns = {"/readcandidate"})
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
		
		String path = request.getServletPath();
		
		if (path == "/readcandidate") {
			Candidate c = readCandidate(request, id);
			request.setAttribute("candidate", c);
			RequestDispatcher rd = request.getRequestDispatcher("./candidate/updateinfo.jsp");
			rd.forward(request, response);
			
		}
		
	}
	
	private Candidate readCandidate(HttpServletRequest request, int id) {
		String uri = "http://localhost:8080/rest/candidateservice/readcandidate/"+id;
		Client client = ClientBuilder.newClient();
		WebTarget webtar = client.target(uri);
		Builder builder = webtar.request();
		Candidate c = builder.get(Candidate.class);
		return c;	
	}

}
