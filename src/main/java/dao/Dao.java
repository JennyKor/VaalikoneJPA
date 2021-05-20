package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import data.Answer;
import data.Candidate;
import data.User;
import data.Question;

/**
 * 
 * @author Jenny, Kirsi
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
	
	public static Candidate findCandidateById(int id) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Candidate candidate = em.find(Candidate.class, id);
		em.getTransaction().commit();
		em.close();
		return candidate;
	}
	
	/**
	 * Retrieves user info from database matching given parameters,
	 * stores it in a User class object and returns it. If there is nothing
	 * in the database matching the given parameters, returns an empty
	 * object.
	 * @param name
	 * @param password
	 * @return user
	 */
	@SuppressWarnings("finally")
	public static User findUser(String name, String password){
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		User user = null;
		try {
			user = em.createQuery("SELECT u FROM User u WHERE u.username = :name AND u.password = :password", User.class)
						.setParameter("name", name)
						.setParameter("password", password)
						.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
		
		return user;
		}
	}
	
	/**
	 * Similar to findUser. Uses the User table's id as a foreign key
	 * to find a matching result from Candidate table. Returns a Candidate
	 * class object.
	 * @param id
	 * @return candidate
	 */
	public static Candidate findCandidate(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Candidate candidate = null;
		candidate = em.createQuery("SELECT c FROM Candidate c WHERE c.user_id = :id", Candidate.class)
				.setParameter("id", id)
				.getSingleResult();
		return candidate;
		
	}

}