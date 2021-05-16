package app;

import java.io.*;
import java.util.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.*;
import javax.ws.rs.core.*;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.appengine.repackaged.com.google.gson.Gson;
import com.google.appengine.repackaged.com.google.gson.JsonObject;
import com.google.appengine.repackaged.com.google.gson.JsonParser;

import data.Answer;
import data.Candidate;
import data.Question;
import dao.Dao;

/**
 * Class finds the questions to the form
 * @author Kirsi
 *
 */
@Path("/machine")
public class Machine {
	
	@Context HttpServletRequest request;
	@Context HttpServletResponse response;
	
	EntityManagerFactory emf = null;
	EntityManager em = null;

	/**
	 * 
	 * @throws IOException
	 * @throws ServletException
	 */
	
	@GET
	@Produces("text/html")
	@Path("/questions")
	public void getAllQuestions() throws IOException, ServletException {
		List<Question> q = Dao.findAllQuestions();
		request.setAttribute("question", q);
		request.getRequestDispatcher("/answerpage.jsp").forward(request, response);
	}
	
	@GET
	@Path("/getcandidateanswers/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public void getAnswersByCandidate(@PathParam("id") int id) throws ServletException, IOException {
		Candidate candidate = Dao.findCandidateById(id);
		request.setAttribute("candidate", candidate);
		request.getRequestDispatcher("").forward(request, response);
	}
	
	@GET
	@Produces("text/html")
	@Path("/showmore/{id}")
	public void showMore(@PathParam("id") int ehdokas_id) throws ServletException, IOException {
		Candidate candidate = Dao.findCandidateById(ehdokas_id);
		
		request.setAttribute("candidate", candidate);
		request.getRequestDispatcher("/showmore.jsp").forward(request, response);
	}
	
}