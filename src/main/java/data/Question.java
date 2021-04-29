package data;

import java.io.Serializable;

import javax.persistence.*;

/**
 * 
 * Persistence class for the questions
 *
 */
@Entity
@Table(name = "Question")
@NamedQuery(name="Question.findAll", query="SELECT q FROM Question q")
public class Question implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "KYSYMYS_ID")
	private int kysymys_id;
	private String kysymys;
	
	public Question() {
		
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
