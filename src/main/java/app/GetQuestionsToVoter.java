package app;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.ws.rs.*;
import javax.ws.rs.core.*;

import data.*;
import dao.*;

import java.io.*;
import java.util.*;

/**
 * 
 * Gets all the data from persistence class and connects to MySQL with Dao.
 * 
 * @author Kirsi
 *
 */
@Path("/answer")
public class GetQuestionsToVoter {
	
	@Context HttpServletRequest request;
	@Context HttpServletResponse response;
	
	Dao dao = new Dao();
	
	List<String> answers = new ArrayList<String>();
	
	@GET
	@Produces("text/html")
	@Path("/questions")
	public void getAllQuestions() throws IOException, ServletException {
		
		List<Question> question = new ArrayList<Question>();
		question = dao.findAllQuestions();
		
		request.setAttribute("question", question);
		request.getRequestDispatcher("/answerpage.jsp").forward(request, response);
	}
	
	@POST
	@Produces("text/html")
	@Path("/results")
	public void getResults() throws ServletException, IOException {
		List<Question> question = dao.findAllQuestions();
		List<Candidate> candidate = dao.findAllCandidates();
//		List<Answer> candidateAnswer = dao.findCandidatesAnswers();
		
		List<Integer> answerlist = new ArrayList<>();
		int answer = 0;
		String answerAsString;
		
		for (int i = 1; i < question.size(); i++) { // for counting the points, work in progress
			answerAsString = request.getParameter("" + i + 1);
			if (answerAsString != null) {
				answer = Integer.valueOf(answerAsString);
				answerlist.add(answer);
			} else {
				answer = 0;
				answerlist.add(answer);
			}
		}
		
//		for (int i = 0; candidateAnswer != null && i < candidateAnswer.size(); i++) {
//			answerlist.add(Integer.parseInt(request.getParameter("" + i + 1)));
//		}
//		
//		for (int i = 0; candidateAnswer != null && i < candidateAnswer.size(); i++) {
//			candidateAnswer = dao.findCandidatesAnswers();
//			Answer a = candidateAnswer.get(i);
//			a.getVastaus();
//			
//		}
		
//		request.setAttribute("answers", answerlist);
		request.setAttribute("candidate", candidate); // for now prints all candidates
		request.getRequestDispatcher("/results.jsp").forward(request, response);
	}
}
