package services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class QuestionService {
	
	public QuestionService() {
		
	}
	
	public static List findAllQuestions(int kysymys_id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("SELECT q FROM Question q");
		return query.getResultList();
	}

}
