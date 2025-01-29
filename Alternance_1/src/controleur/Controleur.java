package controleur;

import java.util.ArrayList;

import modele.Modele;

public class Controleur {
	/********** Gestion des entreprises ******/
	public static void insertEntreprise (Entreprise uneEntreprise) {
		//controle des données 
		
		//appel du Modele 
		Modele.insertEntreprise(uneEntreprise);
	}
	public static ArrayList<Entreprise> selectAllEntreprises (){
		return Modele.selectAllEntreprises(); 
}
	public static ArrayList<Entreprise> selectLikeEntreprises (String filtre){
		return Modele.selectLikeEntreprises(filtre); 
	}
	public static void deleteEntreprise(int idEntreprise) {
		Modele.deleteEntreprise(idEntreprise);
	}
	public static Entreprise selectWhereEntreprise(int idEntreprise) {
		return Modele.selectWhereEntreprise(idEntreprise);
	}
	public static void updateEntreprise (Entreprise uneEntreprise) {
		Modele.updateEntreprise(uneEntreprise);
	}
	/********** Gestion des etudiants ******/
	public static void insertEtudiant (Etudiant unEtudiant) {
		//controle des données 
		
		//appel du Modele 
		Modele.insertEtudiant(unEtudiant);
	}
	public static ArrayList<Etudiant> selectAllEtudiants (){
		return Modele.selectAllEtudiants(); 
	}
	public static ArrayList<Etudiant> selectLikeEtudiants (String filtre){
		return Modele.selectLikeEtudiants(filtre); 
	}
	public static void deleteEtudiant(int idEtudiant) {
		Modele.deleteEtudiant(idEtudiant);
	}
	public static Entreprise selectWhereEtudiant(int idEtudiant) {
		return Modele.selectWhereEntreprise(idEtudiant);
	}
	public static void updateEtudiant (Etudiant unEtudiant) {
		Modele.updateEtudiant(unEtudiant);
	}
}
