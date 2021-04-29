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
	
	//vielä kaikkee puuttuu, meni vähän ohi
	
}
