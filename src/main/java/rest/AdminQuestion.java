package rest;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import dao.Dao;
import data.Question;

/**
 * 
 * @author Jenna
 * Restful service for reading, adding, editing and deleting questions
 */


@Path("/admin")
public class AdminQuestion {
	@Context HttpServletRequest request;
	@Context HttpServletResponse response;
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
	
	
	@GET
	@Produces("text/html")
	@Path("/questions")
	public void getQuestions() throws ServletException, IOException {
		EntityManager em = null;
		try {
			
			em = emf.createEntityManager();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		List<Question> list = Dao.findAllQuestions();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/showquestion.jsp").forward(request, response);
	}
	
	@GET
	@Path("/readquestion/{kysymys_id}")
	@Produces(MediaType.APPLICATION_JSON)
	public void readQuestion(@PathParam("kysymys_id") int kysymys_id) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Question q = em.find(Question.class, kysymys_id);
		em.getTransaction().commit();
		request.setAttribute("questiontoedit", q);
		RequestDispatcher rd = request.getRequestDispatcher("/showquestiontoedit.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@POST
	@Path("/updatequestion")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes("application/x-www-form-urlencoded")
	public void updateQuestion(@FormParam("kysymys_id") int kysymys_id, @FormParam("kysymys") String kysymys) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Question q = em.find(Question.class, kysymys_id);
		
		if(q!=null) {
			q.setKysymys(kysymys);
			em.merge(q);
		}
		
		em.getTransaction().commit();
		
		try {
			getQuestions();
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@GET
	@Path("/showtodelete/{kysymys_id}")
	@Produces(MediaType.APPLICATION_JSON)
	public void showToDelete(@PathParam("kysymys_id") int kysymys_id) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Question q = em.find(Question.class, kysymys_id);
		em.getTransaction().commit();
		request.setAttribute("questiontodelete", q);
		RequestDispatcher rd = request.getRequestDispatcher("/deletequestion.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@POST
	@Path("/delete")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes("application/x-www-form-urlencoded")
	public void deleteQuestion(@FormParam("kysymys_id") int kysymys_id, @FormParam("kysymys") String kysymys){
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Question q = em.find(Question.class, kysymys_id);
		
		System.out.println("sdögjdsökl"+q);
		System.out.println("kysymys_id"+kysymys_id);
		if(q!=null) {
			q.setKysymys(kysymys);
			em.remove(q);
		}
		
		em.getTransaction().commit();
		
		try {
			getQuestions();
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@POST
	@Path("/addquestion")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes("application/x-www-form-urlencoded")
	public void addQuestion(@FormParam("kysymys") String kysymys){
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Question q = new Question(kysymys);
		
		if(q!=null) {
			q.setKysymys(kysymys);
			em.persist(q);
		}
		
		em.getTransaction().commit();
		
		try {
			getQuestions();
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

}
