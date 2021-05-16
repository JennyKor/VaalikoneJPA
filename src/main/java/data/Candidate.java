package data;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

/**
 * 
 * Persistence class for the candidates
 *
 */
@Entity
@Cacheable(false)
@Table(name = "Candidate")
@NamedQuery(name="Candidate.findAll", query="SELECT c FROM Candidate c")
public class Candidate implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ehdokas_id")
	private int ehdokas_id;
	
	private String etunimi;
	private String sukunimi;
	private String puolue;
	private String kotipaikkakunta;
	private int ika;
	private String miksi_eduskuntaan;
	private String mita_asioita_haluat_edistaa;
	private String ammatti;
	private int user_id;
	
	@Transient
	private int points;
	
	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	@OneToMany(mappedBy = "candidate")
	private List<Answer> answer;
	
	public Candidate() {
		
	}
	
	public Candidate(int id, String etunimi, String sukunimi, String puolue, String kpkunta, int ika, String miksi, String mita, String ammatti) {
		setEhdokas_id(id);
		this.etunimi = etunimi;
		this.sukunimi = sukunimi;
		this.puolue = puolue;
		this.kotipaikkakunta = kpkunta;
		setIka(ika);
		this.miksi_eduskuntaan = miksi;
		this.mita_asioita_haluat_edistaa = mita;
		this.ammatti = ammatti;
	}
	
	public Candidate(String etunimi, String sukunimi, String puolue, String kpkunta, int ika, String miksi, String mita, String ammatti) {
		this.etunimi = etunimi;
		this.sukunimi = sukunimi;
		this.puolue = puolue;
		this.kotipaikkakunta = kpkunta;
		setIka(ika);
		this.miksi_eduskuntaan = miksi;
		this.mita_asioita_haluat_edistaa = mita;
		this.ammatti = ammatti;
	}
	
	public List<Answer> getAnswer() {
		return this.answer;
	}
	
	public void setAnswer(List<Answer> answer) {
		this.answer = answer;
	}
	
	public Answer addAnswer(Answer answer) {
		getAnswer().add(answer);
		answer.setCandidate(this);
		return answer;
	}
	
	public int getEhdokas_id() {
		return ehdokas_id;
	}
	
	public void setEhdokas_id(int ehdokas_id) {
		this.ehdokas_id = ehdokas_id;
	}
	
	public void setEhdokas_id(String ehdokas_id) {
		try {
			this.ehdokas_id = Integer.parseInt(ehdokas_id);
		} catch (NumberFormatException | NullPointerException e) {
			// Nothing here
		}
	}
	
	public String getEtunimi() {
		return etunimi;
	}
	
	public void setEtunimi(String etunimi) {
		this.etunimi = etunimi;
	}
	
	public String getSukunimi() {
		return sukunimi;
	}
	
	public void setSukunimi(String sukunimi) {
		this.sukunimi = sukunimi;
	}
	
	public String getPuolue() {
		return puolue;
	}
	
	public void setPuolue(String puolue) {
		this.puolue = puolue;
	}
	
	public String getKotipaikkakunta() {
		return kotipaikkakunta;
	}
	
	public void setKotipaikkakunta(String kotipaikkakunta) {
		this.kotipaikkakunta = kotipaikkakunta;
	}
	
	public int getIka() {
		return ika;
	}
	
	public void setIka(int ika) {
		this.ika = ika;
	}
	
	public void setIka(String ika) {
		try {
			this.ika = Integer.parseInt(ika);
		} catch (NumberFormatException | NullPointerException e) {
			// Nothing here
		}
	}
	
	public String getMiksi_eduskuntaan() {
		return miksi_eduskuntaan;
	}
	public void setMiksi_eduskuntaan(String miksi_eduskuntaan) {
		this.miksi_eduskuntaan = miksi_eduskuntaan;
	}
	
	public String getMita_asioita_haluat_edistaa() {
		return mita_asioita_haluat_edistaa;
	}
	
	public void setMita_asioita_haluat_edistaa(String mita_asioita_haluat_edistaa) {
		this.mita_asioita_haluat_edistaa = mita_asioita_haluat_edistaa;
	}
	
	public String getAmmatti() {
		return ammatti;
	}
	
	public void setAmmatti(String ammatti) {
		this.ammatti = ammatti;
	}
	
	public int getUser_id() {
		return user_id;
	}
	
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	public void setUser_id(String user_id) {
		try {
			this.user_id = Integer.parseInt(user_id);
		} catch (NumberFormatException | NullPointerException e) {
			// Nothing here
		}
	}
}
