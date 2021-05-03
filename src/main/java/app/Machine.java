package app;

import java.io.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.*;
import javax.ws.rs.core.*;

import data.Answer;
import data.CalcPoints;
import data.Candidate;
import data.CandidatesAnswers;
import data.Question;
import service.ServiceForQuestions;
import dao.Dao;

/**
 * Class that manages how user sees questions and gets to answer them, then shows results.
 * @author Kirsi
 *
 */
@Path("/answer")
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
		
		try {
			emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
			em = emf.createEntityManager();
		} catch (Exception e) {
			response.getWriter().println("Error");
			e.printStackTrace();
			return;
		}

		List<Question> q = Dao.findAllQuestions();
		request.setAttribute("question", q);
		request.getRequestDispatcher("/answerpage.jsp").forward(request, response);
	}
	
	/**
	 * 
	 * @throws ServletException
	 * @throws IOException
	 */
	@POST
	@Produces("text/html")
	@Path("/results")
	public void getResults() throws ServletException, IOException {
		
		try {
			emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
			em = emf.createEntityManager();
		} catch (Exception e) {
			response.getWriter().println("Error");
			e.printStackTrace();
			return;
		}
		
		List<Question> questionList = Dao.findAllQuestions();
		List<Candidate> candidateList = Dao.findAllCandidates();
		ArrayList<Integer> userAnswerList = new ArrayList<>();
		
		int answer = 0;
		
		int differential = 0;
		int differentialSum = 0;
		
		for (int i = 0; i < questionList.size(); i++) {
			String strAnswer = request.getParameter(""/* en tiedä mitä tähän */);
			System.out.println(strAnswer); // for testing, atm everything is null

			if (strAnswer != null) {
				answer = Integer.valueOf(strAnswer);
				userAnswerList.add(answer);
			} else {
				answer = 0;
				userAnswerList.add(answer);
			}
		}
		
		CandidatesAnswers cAnswers = null;
		List<CandidatesAnswers> candidatesAnswers = null;
		ArrayList<CalcPoints> calcPoints = new ArrayList<>();
		
		for (int i = 0; i < candidateList.size(); i++) {
			CalcPoints points = new CalcPoints();
			differential = 0;
			Candidate candidate = candidateList.get(i);
			candidatesAnswers = Dao.findAllAnswers(candidate.getEhdokas_id());
			
			if (candidatesAnswers.size() != 0) {
				for (int a = 0; a < questionList.size(); a++) {
					if (userAnswerList.get(a) != 0) {
						cAnswers = candidatesAnswers.get(a);
						differential = userAnswerList.get(a) - cAnswers.getVastaus();
						differentialSum = Math.abs(differential) + differentialSum;
					}
				}
			}
			
			// hakee kaikki ehdokkaat ja näyttää 5 ehdokasta ja niiden vastaukset
			// MUTTA käyttäjän vastauksien hakeminen kusee
			// ^ tämän takia pisteiden laskua ei testattu
			
			points.setEhdokas_id(candidateList.get(i).getEhdokas_id());
			points.setFirstName(candidateList.get(i).getEtunimi());
			points.setLastName(candidateList.get(i).getSukunimi());
			points.setPoints(differentialSum);
			calcPoints.add(points);

// points and candidate's answers printed to the console, mostly for testing
//			System.out.println("ID: " + points.getEhdokas_id() + ", points: " + points.getPoints());
//			System.out.println("" + candidatesAnswers);
		}
		
		Collections.sort(calcPoints);
		calcPoints.subList(5, calcPoints.size()).clear();
		request.setAttribute("userAnswerList", userAnswerList);
		request.setAttribute("calcPoints", calcPoints);
		request.getRequestDispatcher("/results.jsp").forward(request, response);
	}
}
