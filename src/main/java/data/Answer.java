package data;

import java.io.Serializable;

import javax.persistence.*;

/**
 * 
 * Persistence class for the answers
 *
 */
@Entity
@Table(name = "Answer")
@NamedQuery(name="Answer.findAll", query="SELECT a FROM Answer a")
public class Answer implements Serializable {

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AnswerPrimaryKey id;
	
	private int kysymys_id;
	private int ehdokas_id;
	private String kommentti;
	private int vastaus;
	
	public AnswerPrimaryKey getId() {
		return this.id;
	}
	
	public void setId(AnswerPrimaryKey id) {
		this.id = id;
	}
	
	public int getKysymys_id() {
		return kysymys_id;
	}

	public void setKysymys_id(int kysymys_id) {
		this.kysymys_id = kysymys_id;
	}

	public int getEhdokas_id() {
		return ehdokas_id;
	}

	public void setEhdokas_id(int ehdokas_id) {
		this.ehdokas_id = ehdokas_id;
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
