package app;

public class Points implements Comparable<Points> {
	private int ehdokas_id;
	private int pisteMaara;
	private String etunimi;
	private String sukunimi;
	private String puolue;
	
	public Points() {
		
	}
	
	public Points(int ehdokas_id, int pisteMaara) {
		this.ehdokas_id = ehdokas_id;
		this.pisteMaara = pisteMaara;
	}
	
	public int getEhdokas_id() {
		return ehdokas_id;
	}
	
	public void setEhdokas_id(int ehdokas_id) {
		this.ehdokas_id = ehdokas_id;
	}
	
	public int getPisteMaara() {
		return pisteMaara;
	}
	
	public void setPisteMaara(int pisteMaara) {
		this.pisteMaara = pisteMaara;
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

	@Override
	public int compareTo(Points p) {
		// TODO Auto-generated method stub
		int compare = Integer.compare(pisteMaara, p.pisteMaara);
		return compare;
	}
}
