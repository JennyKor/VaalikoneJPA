package app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.repackaged.com.google.gson.Gson;

import dao.Dao;
import data.Answer;
import data.CalcPoints;
import data.Candidate;
import data.Question;

/**
 * Gets user's and all the candidates answers and compares them, then
 * prints best candidates based on answers
 * @author Kirsi
 *
 */
@WebServlet(urlPatterns = {"/results"})
public class MachineServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public MachineServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Answer> userAnswerList = new ArrayList<>();
		List<Question> questionList = Dao.findAllQuestions();
		List<Candidate> candidateList = Dao.findAllCandidates();
		ArrayList<CalcPoints> calcPoints = new ArrayList<>();
		
		for (Question q : questionList) {
			Answer answer = new Answer();
			String vastaus = request.getParameter("" + q.getKysymys_id());
			if (vastaus == null) {
				vastaus = "0";
			}
			answer.setKysymys_id(q.getKysymys_id());
			answer.setVastaus(Integer.parseInt(vastaus));
			userAnswerList.add(answer);
		}
		
		for (int i = 0; i < candidateList.size(); i++) {
			CalcPoints points = new CalcPoints();
			Candidate candidate = candidateList.get(i);
			List<Answer> candidatesAnswers = Dao.findCandidateById(candidate.getEhdokas_id()).getAnswer();
			int erotus = 0;
			
			for (int a = 0; a < candidatesAnswers.size(); a++) {
				Answer userAnswer = userAnswerList.get(a);
				Answer candidateAnswer = candidatesAnswers.get(a);
				erotus = erotus + Math.abs(userAnswer.getVastaus() - candidateAnswer.getVastaus());
			}
			
			candidate.setPoints(erotus);
			
			points.setEhdokas_id(candidateList.get(i).getEhdokas_id());
			points.setFirstName(candidateList.get(i).getEtunimi());
			points.setLastName(candidateList.get(i).getSukunimi());
			points.setPoints(erotus);
			calcPoints.add(points);
		}
		
		Collections.sort(calcPoints, Collections.reverseOrder());
		calcPoints.subList(5, calcPoints.size()).clear();
		request.setAttribute("calcPoints", calcPoints);
		request.setAttribute("questionList", questionList);
		request.getRequestDispatcher("/results.jsp").forward(request, response);
	}

}
