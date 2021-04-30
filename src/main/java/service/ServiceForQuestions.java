package service;

import java.util.List;

import javax.ws.rs.*;
import javax.ws.rs.core.*;

import dao.Dao;
import data.Question;

@Path("/questions")
public class ServiceForQuestions {
	
	@GET
	@Path("/getall")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Question> getAll() {
		return Dao.findAllQuestions();
	}
	
	// tänne sitten POST add, DELETE delete, POST edit
}
