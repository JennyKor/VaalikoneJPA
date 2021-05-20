package data;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

/**
 * 
 * Persistence class for the answers
 *
 */
@Entity
@Cacheable(false)
@Table(name = "Answer")
@NamedQueries({
	@NamedQuery(name = "Answer.findAll", query = "SELECT a FROM Answer a")
})
public class Answer implements Serializable {

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AnswerPrimaryKey id;

	private int vastaus;
	private String kommentti;
	
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "EHDOKAS_ID")
	private Candidate candidate;
	
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "KYSYMYS_ID", insertable = false, updatable = false)
	private Question question;
	
	private int kysymys_id;
	
	public Answer() {
		
	}
	
	public Candidate getCandidate() {
		return this.candidate;
	}
	
	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}
	
	public Question getQuestion() {
		return this.question;
	}
	
	public void setQuestion(Question question) {
		this.question = question;
	}
	
	public Answer(int vastaus) {
		this.vastaus = vastaus;
	}
	
	public int getKysymys_id () {
		return this.kysymys_id;
	}
	
	public void setKysymys_id(int kysymys_id) {
		this.kysymys_id = kysymys_id;
	}

	public String getKommentti() {
		return kommentti;
	}
	
	public void setKommentti(String kommentti) {
		this.kommentti = kommentti;
	}
	
	public int getVastaus() {
		return vastaus;
	}
	
	public void setVastaus(int vastaus) {
		this.vastaus = vastaus;
	}
}
