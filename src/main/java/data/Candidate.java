package data;

import java.io.Serializable;

import javax.persistence.*;

/**
 * 
 * Persistence class for the candidates
 * @author Kirsi, Jenny
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
	
	public Candidate() {
		
	}
	
	public Candidate(int ehdokas_id, int user_id, String etunimi, String sukunimi, int ika, String puolue, String kotipaikkakunta,
					String ammatti) {
		this.ehdokas_id = ehdokas_id;
		this.user_id = user_id;
		this.etunimi = etunimi;
		this.sukunimi = sukunimi;
		this.ika = ika;
		this.puolue = puolue;
		this.kotipaikkakunta = kotipaikkakunta;
		this.ammatti = ammatti;
	}
	
	public Candidate(String ehdokas_id, String user_id, String etunimi, String sukunimi, String ika, String puolue, String kotipaikkakunta,
					String ammatti) {
		setEhdokas_id(ehdokas_id);
		setUser_id(user_id);
		this.etunimi = etunimi;
		this.sukunimi = sukunimi;
		setIka(ika);
		this.puolue = puolue;
		this.kotipaikkakunta = kotipaikkakunta;
		this.ammatti = ammatti;
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
