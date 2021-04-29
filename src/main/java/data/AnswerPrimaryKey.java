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
	
	@Column(name = "kysymys_id")
	private int kysymys_id;
	
	@Column(name = "ehdokas_id")
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
	
	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof AnswerPrimaryKey)) {
			return false;
		}
		AnswerPrimaryKey castOther = (AnswerPrimaryKey)other;
		return (this.ehdokas_id == castOther.ehdokas_id) && (this.kysymys_id == castOther.kysymys_id);
	}
}
