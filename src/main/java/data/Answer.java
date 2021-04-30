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
@NamedQueries({
	@NamedQuery(name = "Answer.findAll", query = "SELECT a FROM Answer a"),
	@NamedQuery(name = "Answer.findByAnswer", query = "SELECT a FROM Answer a WHERE a.answer = :answer"),
	@NamedQuery(name = "Answer.findByEhdokasId", query = "SELECT a FROM Answer a WHERE a.answerPrimaryKey.ehdokas_id = :ehdokas_id"),
	@NamedQuery(name = "Answer.findByKysymysId", query = "SELECT a FROM Answer a WHERE a.answerPrimaryKey.kysymys_id = :kysymys_id")
})
public class Answer implements Serializable {

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	protected AnswerPrimaryKey answerPrimaryKey;
	
	@Column(name = "VASTAUS")
	private int vastaus;
	
	@Column(name = "KOMMENTTI")
	private String kommentti;
	
	public Answer() {
		
	}

	/**
	 * 
	 * @param ehdokas_id
	 * @param kysymys_id
	 */
	public Answer(int ehdokas_id, int kysymys_id) {
		this.answerPrimaryKey = new AnswerPrimaryKey(ehdokas_id, kysymys_id);
	}
	
	/**
	 * 
	 * @return
	 */
	public AnswerPrimaryKey getAnswerPrimaryKey() {
		return answerPrimaryKey;
	}
	
	/**
	 * 
	 * @param answerPrimaryKey
	 */
	public void setAnswerPrimaryKey(AnswerPrimaryKey answerPrimaryKey) {
		this.answerPrimaryKey = answerPrimaryKey;
	}

	/**
	 * 
	 * @return
	 */
	public String getKommentti() {
		return kommentti;
	}
	
	/**
	 * 
	 * @param kommentti
	 */
	public void setKommentti(String kommentti) {
		this.kommentti = kommentti;
	}
	
	/**
	 * 
	 * @return
	 */
	public int getVastaus() {
		return vastaus;
	}
	
	/**
	 * 
	 * @param vastaus
	 */
	public void setVastaus(int vastaus) {
		this.vastaus = vastaus;
	}
	
	public boolean equals(Object object) {
		if (!(object instanceof Answer)) {
			return false;
		}
		
		Answer secondObj = (Answer) object;
		return !((this.answerPrimaryKey == null && secondObj.answerPrimaryKey != null) || (this.answerPrimaryKey != null && !this.answerPrimaryKey.equals(secondObj.answerPrimaryKey)));
	}
	
	public String toString() {
		return "persist.Answer[answerPrimaryKey = " + answerPrimaryKey + "]";
	}
}
