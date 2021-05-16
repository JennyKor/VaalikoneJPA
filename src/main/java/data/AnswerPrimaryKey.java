package data;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * 
 * Primary keys "kysymys_id" and "ehdokas_id"
 *
 */
@Embeddable
public class AnswerPrimaryKey implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "KYSYMYS_ID", insertable = false, updatable = false)
	private int kysymys_id;

	@Column(name = "EHDOKAS_ID", insertable = false, updatable = false)
	private int ehdokas_id;
	
	public AnswerPrimaryKey() {
		
	}
	
	public void setEhdokas_id(int ehdokas_id) {
		this.ehdokas_id = ehdokas_id;
	}

	public int getEhdokas_id() {
		return this.ehdokas_id;
	}

	public void setKysymys_id(int kysymys_id) {
		this.kysymys_id = kysymys_id;
	}
	
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
	
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.ehdokas_id;
		hash = hash * prime + this.kysymys_id;
		
		return hash;
	}
}
