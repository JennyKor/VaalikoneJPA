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
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
	public static int countQuestions;

	@SuppressWarnings("unchecked")
	public static List<Question> findAllQuestions() {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		List<Question> list = em.createQuery("SELECT q FROM Question q").getResultList();
		em.getTransaction().commit();
		em.close();
		countQuestions = list.size();
		return list;
	}

	@SuppressWarnings("unchecked")
	public static List<Candidate> findAllCandidates() {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		List<Candidate> list = em.createQuery("SELECT c FROM Candidate c").getResultList();
		em.getTransaction().commit();
		em.close();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public static List<Answer> findAll(int ehdokas_id) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		List<Answer> list = em.createQuery("SELECT a FROM Answer a").getResultList();
		em.getTransaction().commit();
		em.close();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public static Candidate findCandidateById(int id) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Candidate candidate = em.find(Candidate.class, id);
		em.getTransaction().commit();
		em.close();
		return candidate;
	}

//	public static Candidate findCandidateById(String ehdokas_id) {
//		// TODO Auto-generated method stub
//		return null;
//	}
}
