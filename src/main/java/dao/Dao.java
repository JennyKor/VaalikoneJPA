package dao;

import java.util.*;

import javax.persistence.*;

import data.Answer;
import data.Candidate;
import data.CandidatesAnswers;
import data.Question;

/**
 * 
 * Tänne kaikki daohommat eli kysymysten, ehdokkaiden, vastauksien ym haut
 *
 */
public class Dao {
	
	public static int countQuestions;

	public static List<Question> findAllQuestions() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Question> list = em.createQuery("SELECT q FROM Question q").getResultList();
		
		countQuestions = list.size();
		return list;
	}
	
	public static List<Question> findById(int kysymys_id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Question> list = em.createQuery("Question.findQuestionById").setParameter("kysymys_id", kysymys_id).getResultList();
		return list;
	}
	
	public static List<Candidate> findAllCandidates() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Candidate> list = em.createQuery("SELECT c FROM Candidate c").getResultList();
		return list;
	}

	public static List<CandidatesAnswers> findAllAnswers(int ehdokas_id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<CandidatesAnswers> list = em.createQuery("SELECT a FROM Answer a WHERE a.answerPrimaryKey.ehdokas_id = :ehdokas_id").setParameter("ehdokas_id", ehdokas_id).getResultList();
		return list;
	}
}
