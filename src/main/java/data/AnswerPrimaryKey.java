package data;

import java.io.Serializable;

import javax.persistence.*;

/**
 * 
 * Primary keys
 *
 */
@Embeddable
public class AnswerPrimaryKey implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Column(name = "KYSYMYS_ID")
	private int kysymys_id;
	
	@Column(name = "EHDOKAS_ID")
	private int ehdokas_id;
	
	public AnswerPrimaryKey() {
		
	}
	
	/**
	 * 
	 * @param ehdokas_id
	 * @param kysymys_id
	 */
	public AnswerPrimaryKey(int ehdokas_id, int kysymys_id) {
		this.kysymys_id = kysymys_id;
		this.ehdokas_id = ehdokas_id;
	}
	
	/**
	 * 
	 * @param ehdokas_id
	 */
	public void setEhdokas_id(int ehdokas_id) {
		this.ehdokas_id = ehdokas_id;
	}
	
	/**
	 * 
	 * @return
	 */
	public int getEhdokas_id() {
		return this.ehdokas_id;
	}
	
	/**
	 * 
	 * @param kysymys_id
	 */
	public void setKysymys_id(int kysymys_id) {
		this.kysymys_id = kysymys_id;
	}
	
	/**
	 * 
	 * @return
	 */
	public int getKysymys_id() {
		return this.kysymys_id;
	}
	
	public boolean equals(Object object) {
		if (!(object instanceof AnswerPrimaryKey)) {
			return false;
		}
		
		AnswerPrimaryKey secondObj = (AnswerPrimaryKey) object;
		
		if (this.ehdokas_id != secondObj.ehdokas_id) {
			return false;
		}

		return this.kysymys_id == secondObj.kysymys_id;
	}
	
	public String toString() {
		return "persist.AnswerPrimaryKey[ehdokas_id = " + ehdokas_id + ", kysymys_id = " + kysymys_id + "]";
	}
}
