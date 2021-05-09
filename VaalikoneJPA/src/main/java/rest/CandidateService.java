package rest;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import data.Candidate;

@Path("/candidateservice")
public class CandidateService {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");

	@GET
	@Path("/readcandidate/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Candidate readCandidate(@PathParam("id") int id) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Candidate c = em.find(Candidate.class, id);
		em.getTransaction().commit();
		return c;
	}
	
	@PUT
	@Path("/updatecandidate")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Candidate updateCandidate(Candidate candidate) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Candidate c = em.find(Candidate.class, candidate.getEhdokas_id());
		System.out.println(c);
		if(c!=null) {
			em.merge(candidate);
		}
		em.getTransaction().commit();
		
		return c;
//		Candidate updatedCand = readCandidate(candidate.getEhdokas_id());
//		return updatedCand;
	}
	
	
}
