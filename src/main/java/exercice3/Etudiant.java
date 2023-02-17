package exercice3;

public class Etudiant implements Comparable<Etudiant>{
	public String nom;
	public String prenom;
	public int note;
	public Etudiant() {
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public int getNote() {
		return note;
	}
	public void setNote(int note) {
		this.note = note;
	}
	
	@Override
	public int compareTo(Etudiant e) {
		// TODO Auto-generated method stub
		return e.note - this.note;
	}
}
