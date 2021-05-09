package data;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


/**
 * 
 * Persistence class for the questions
 *
 */
@Entity
@Table(name = "Question")
@NamedQueries ({
	@NamedQuery(name = "Question.findAll", query = "SELECT q FROM Question q"),
	@NamedQuery(name = "Question.findQuestionById", query = "SELECT q FROM Question q WHERE q.kysymys_id = :kysymys_id")
})
public class Question implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "KYSYMYS_ID")
	private int kysymys_id;
	private String kysymys;
	
	public Question() {
		
	}
	
	public Question(String kysymys_id, String kysymys) {
		setKysymys_id(kysymys_id);
		this.kysymys = kysymys;
	}
	
	public Question(String kysymys_id) {
		setKysymys_id(kysymys_id);
	}
	
	public Question(int kysymys_id) {
		this.kysymys_id = kysymys_id;
	}
	
	public Question(int kysymys_id, String kysymys) {
		this.kysymys_id = kysymys_id;
		this.kysymys = kysymys;
	}

	public int getKysymys_id() {
		return kysymys_id;
	}

	public void setKysymys_id(int kysymys_id) {
		this.kysymys_id = kysymys_id;
	}
	
	public void setKysymys_id(String kysymys_id) {
		try {
			this.kysymys_id = Integer.parseInt(kysymys_id);
		} catch (NumberFormatException | NullPointerException e) {
			// Nothing here
		}
	}

	public String getKysymys() {
		return kysymys;
	}

	public void setKysymys(String kysymys) {
		this.kysymys = kysymys;
	}
	
}
