package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		
		return user;
		}
	}

}