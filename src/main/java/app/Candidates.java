package app;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;

import dao.Dao;
import data.Candidate;

@Path("/candidates")
public class Candidates {
	@Context HttpServletRequest request;
	@Context HttpServletResponse response;
	
	@GET
	@Produces("text/html")
	@Path("/all")
	public void allCandidates() throws ServletException, IOException {
		List<Candidate> list = Dao.findAllCandidates();
		request.setAttribute("showcandidates", list);
		request.getRequestDispatcher("/allcandidates.jsp").forward(request, response);
	}
	
	@GET
	@Produces("text/html")
	@Path("/showmore")
	public void showMore() throws ServletException, IOException {
		int ehdokas_id = Integer.parseInt(request.getParameter("ehdokas_id"));
		Candidate candidate = Dao.findCandidateById(ehdokas_id);
		
		request.setAttribute("candidate", candidate);
		request.getRequestDispatcher("/showmore.jsp").forward(request, response);
	}
}
