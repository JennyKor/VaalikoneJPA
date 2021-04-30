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

	public static List<Question> findAllQuestions() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Question> list = em.createQuery("SELECT q FROM Question q").getResultList();
		return list;
	}
	
	public static List<Candidate> findAllCandidates() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Candidate> list = em.createQuery("SELECT c FROM Candidate c").getResultList();
		return list;
	}

	public static List<Answer> findAllAnswers(int ehdokas_id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Answer> list = em.createQuery("Answer.findByEhdokasId").setParameter("ehdokas_id", ehdokas_id).getResultList();
		return list;
	}
}
