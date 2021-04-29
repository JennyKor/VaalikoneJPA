package dao;

import java.util.*;

import javax.persistence.*;

import data.Question;

/**
 * 
 * Tänne kaikki daohommat eli kysymysten, ehdokkaiden, vastauksien ym haut
 *
 */
public class Dao {
	
	@SuppressWarnings("unchecked")
	public List<Question> getAllQuestions() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		List<Question> list = em.createQuery("SELECT q FROM Question q").getResultList();
		return list;
	}
}
