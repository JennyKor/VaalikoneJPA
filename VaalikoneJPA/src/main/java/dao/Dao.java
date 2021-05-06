package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import data.Candidate;
import data.User;

public class Dao {
	
	/**
	 * Retrieves user info from database matching given parameters,
	 * stores it in an object and returns it. If there is nothing
	 * in the database matching given parameters, returns an empty
	 * object anyway.
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