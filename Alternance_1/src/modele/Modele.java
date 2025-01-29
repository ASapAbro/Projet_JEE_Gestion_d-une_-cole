package modele;


import java.sql.*;
import java.util.ArrayList;
import controleur.Entreprise;
import controleur.Etudiant;

public class Modele {
	//instanciation de la classe Connexion
	private static Connexion uneConnexion = new Connexion("localhost:8889", "alternance_iris", "root", "root");
	
	/************ Gestion des entreprises ***********/
	public static void insertEntreprise (Entreprise uneEntreprise) {
		String requete = "insert into entreprise values (null, '"+uneEntreprise.getDesignation()
		+"','"+uneEntreprise.getAdresse()+"','"+uneEntreprise.getSecteurAct()+"'); "; 
		
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaConnexion().createStatement(); 
			unStat.execute(requete); 
			unStat.close();
			uneConnexion.seDeConnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
	}
	public static ArrayList<Entreprise> selectAllEntreprises (){
		ArrayList<Entreprise> lesEntreprises = new ArrayList<>(); 
		String requete = "select * from entreprise ; ";
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaConnexion().createStatement(); 
			ResultSet desResultats = unStat.executeQuery(requete); 
			while(desResultats.next()) {
				//instancier une entreprise et ajouter dans l'ArrayList
				int identreprise = desResultats.getInt("identreprise"); 
				String designation = desResultats.getString("designation"); 
				String adresse = desResultats.getString("adresse"); 
				String secteurAct = desResultats.getString("secteurAct"); 
				Entreprise uneEntreprise = new Entreprise(identreprise, designation, adresse, secteurAct);
				
				lesEntreprises.add(uneEntreprise);
			}
			unStat.close();
			uneConnexion.seDeConnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
		return lesEntreprises; 
	}
	public static ArrayList<Entreprise> selectLikeEntreprises (String filtre){
		ArrayList<Entreprise> lesEntreprises = new ArrayList<>(); 
		String requete = "select * from entreprise where designation like '%"+filtre
				+"%' or adresse like '%"+filtre + "%' or secteurAct like '%"
				+filtre +"%' ; ";
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaConnexion().createStatement(); 
			ResultSet desResultats = unStat.executeQuery(requete); 
			while(desResultats.next()) {
				//instancier une entreprise et ajouter dans l'ArrayList
				int identreprise = desResultats.getInt("identreprise"); 
				String designation = desResultats.getString("designation"); 
				String adresse = desResultats.getString("adresse"); 
				String secteurAct = desResultats.getString("secteurAct"); 
				Entreprise uneEntreprise = new Entreprise(identreprise, designation, adresse, secteurAct);
				
				lesEntreprises.add(uneEntreprise);
			}
			unStat.close();
			uneConnexion.seDeConnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
		return lesEntreprises; 
	}
	public static void deleteEntreprise (int idEntreprise) {
		String requete = "delete from entreprise where identreprise = "+idEntreprise+";"; 
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaConnexion().createStatement(); 
			unStat.execute(requete); 
			unStat.close();
			uneConnexion.seDeConnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
	}
	public static Entreprise selectWhereEntreprise (int idEntreprise) {
		String requete = "select * from entreprise where identreprise = "+idEntreprise;
		Entreprise uneEntreprise = null; 
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaConnexion().createStatement(); 
			ResultSet unRes = unStat.executeQuery(requete);
			if (unRes.next()) {
			int identreprise = unRes.getInt("identreprise"); 
			String designation = unRes.getString("designation"); 
			String adresse = unRes.getString("adresse"); 
			String secteurAct = unRes.getString("secteurAct"); 
			uneEntreprise=new Entreprise(identreprise, designation, adresse, secteurAct);
			}
		}
		catch (SQLException exp) {
				System.out.println("Erreur d'execution : "+requete);
			}
		return uneEntreprise;
	}
	public static void updateEntreprise (Entreprise uneEntreprise) {
		String requete = "update entreprise set designation='"
		+uneEntreprise.getDesignation() + "', adresse ='"
		+uneEntreprise.getAdresse()+"', secteurAct='"+uneEntreprise.getSecteurAct()
		+"' where identreprise = " + uneEntreprise.getIdentreprise() + ";"; 
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaConnexion().createStatement(); 
			unStat.execute(requete); 
			unStat.close();
			uneConnexion.seDeConnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
	}
	
	/************ Gestion des etudiants ***********/
	public static void insertEtudiant (Etudiant unEtudiant) {
		
	}
	public static ArrayList<Etudiant> selectAllEtudiants (){
		ArrayList<Etudiant> lesEtudiants = new ArrayList<Etudiant>(); 
		
		return lesEtudiants; 
	}
	public static ArrayList<Etudiant> selectLikeEtudiants (String filtre){
		ArrayList<Etudiant> lesEtudiants = new ArrayList<Etudiant>(); 
		
		return lesEtudiants; 
	}
	public static void deleteEtudiant (int idEtudiant) {
		
	}
	public static Etudiant selectWhereEtudiant (int idEtudiant) {
		return null;
	}
	public static void updateEtudiant (Etudiant unEtudiant) {
		
	}
}



