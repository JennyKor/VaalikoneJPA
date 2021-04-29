package dao;

import java.util.*;

import javax.persistence.*;

import data.Answer;
import data.Candidate;
import data.Question;

/**
 * 
 * Tänne kaikki daohommat eli kysymysten, ehdokkaiden, vastauksien ym haut
 *
 */
public class Dao {

	public List<Question> findAllQuestions() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Question> list = em.createQuery("SELECT q FROM Question q").getResultList();
		return list;
	}
	
	public List<Candidate> findAllCandidates() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Candidate> list = em.createQuery("SELECT c FROM Candidate c").getResultList();
		return list;
	}

	public List<Answer> findAllAnswers() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Answer> list = em.createQuery("SELECT a FROM Answer a").getResultList();
		return list;
	}
	
	public List<Answer> findCandidatesAnswers() { // still work in progress, not ready
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Answer> list = em.createQuery("SELECT a FROM Answer a JOIN Candidate c WHERE a.ehdokas_id = c.ehdokas_id").getResultList();
		return list;
	}
}
