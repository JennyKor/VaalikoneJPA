package data;

public class CalcPoints implements Comparable<CalcPoints> {
	private int ehdokas_id;
	private int points;
	private String firstName;
	private String lastName;
	
	public CalcPoints() {
		
	}
	
	public CalcPoints(int ehdokas_id, int points) {
		this.ehdokas_id = ehdokas_id;
		this.points = points;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getEhdokas_id() {
		return ehdokas_id;
	}

	public void setEhdokas_id(int ehdokas_id) {
		this.ehdokas_id = ehdokas_id;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}
	
	public int compareTo(CalcPoints p) {
		int compare = Integer.compare(points, p.points);
		return compare;
	}
	
	public String toString() {
		return "" + ehdokas_id;
	}
}
