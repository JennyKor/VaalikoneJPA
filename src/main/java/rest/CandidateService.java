package rest;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import data.Candidate;

/**
 * REST-services for candidate pages, excluding
 * login.
 * @author Jenny
 *
 */
@Path("/candidateservice")
public class CandidateService {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("VaalikoneJPA");
	@Context
	HttpServletRequest request;
	@Context
	HttpServletResponse response;

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
	}
	
	@POST
	@Path("/photoupload")
	@Consumes({MediaType.MULTIPART_FORM_DATA})
	public void uploadPhoto(@FormDataParam("photo") InputStream fileInputStream,
			@FormDataParam("photo") FormDataContentDisposition fileMetaData,
			@FormDataParam("id") String photo_id,
			@Context ServletContext sc) throws Exception {
		
		//Renaming profile picture and converting to jpeg.
		String name = fileMetaData.getFileName();
		String newname = name.replaceAll(name, "photo" + photo_id + ".jpeg");
		
//		String UPLOAD_PATH="C:/temp"; //works, but it's impossible to retrieve pictures from outside the app
		
		//Has to be changed depending on who is running the program:
		String UPLOAD_PATH="C:/Users/Jenny/git/VaalikoneJPA/src/main/webapp/cand_photos";
		
		try {
			int read = 0;
			byte[] bytes = new byte[1024];
			
			OutputStream out = new FileOutputStream(new File(UPLOAD_PATH + "/" + newname));

			
			while ((read = fileInputStream.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
			out.flush();
			out.close();
		}
		
		catch (IOException e){
			throw new WebApplicationException("Something went wrong.");
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/candidate/index.jsp");
		rd.forward(request, response);
		
	}
}
