CREATE DATABASE IF NOT EXISTS Groupe_23;

USE Groupe_23;

CREATE TABLE ENTREPRISE(
   Siret_ent INT,
   Nom_ent VARCHAR(20) NOT NULL,
   Naf_ent VARCHAR(20) NOT NULL,
   Ape_ent VARCHAR(20) NOT NULL,
   Nom_chef_ent VARCHAR(20) NOT NULL,
   Prenom_chef_ent VARCHAR(20) NOT NULL,
   Adresse_chef_ent VARCHAR(50),
   Mail_chef_ent VARCHAR(40) NOT NULL,
   PRIMARY KEY(Siret_ent),
   UNIQUE(Naf_ent),
   UNIQUE(Ape_ent),
   UNIQUE(Mail_chef_ent)
);

CREATE TABLE MAITRE_STAGE(
   Id_maitreStage INT,
   Nom_maitreStage VARCHAR(20) NOT NULL,
   Prenom_maitreStage VARCHAR(20) NOT NULL,
   Statut_maitreStage VARCHAR(50) NOT NULL,
   Poste_maitreStage VARCHAR(50) NOT NULL,
   Tel_maitreStage VARCHAR(15) NOT NULL,
   Mail_maitreStage VARCHAR(40) NOT NULL,
   Accord_resp_stage TINYINT NOT NULL,
   Accord_etu_stage TINYINT NOT NULL,
   PRIMARY KEY(Id_maitreStage),
   UNIQUE(Mail_maitreStage)
);

CREATE TABLE SUPERVISEUR(
   Id_superviseur INT,
   Nom_superviseur VARCHAR(20) NOT NULL,
   Prenom_superviseur VARCHAR(20) NOT NULL,
   Statut_superviseur VARCHAR(50) NOT NULL,
   Poste_superviseur VARCHAR(50) NOT NULL,
   Tel_superviseur VARCHAR(15) NOT NULL,
   Mail_superviseur VARCHAR(40) NOT NULL,
   PRIMARY KEY(Id_superviseur),
   UNIQUE(Mail_superviseur)
);

CREATE TABLE ENSEIGNANT(
   Id_ensei INT,
   Nom_ensei VARCHAR(20) NOT NULL,
   Prenom_ensei VARCHAR(20) NOT NULL,
   Mail_ensei VARCHAR(40) NOT NULL,
   Resp_stage_ensei TINYINT NOT NULL,
   PRIMARY KEY(Id_ensei),
   UNIQUE(Mail_ensei)
);

CREATE TABLE ETUDIANT(
   Id_etu INT,
   Nom_etu VARCHAR(20) NOT NULL,
   Prenom_etu VARCHAR(50) NOT NULL,
   Adresse_etu VARCHAR(50) NOT NULL,
   Mail_etu VARCHAR(40) NOT NULL,
   Tel_etu VARCHAR(15) NOT NULL,
   Attes_etu TINYINT NOT NULL,
   Chemin_attes_etu VARCHAR(50),
   Valide_attes_etu TINYINT NOT NULL,
   Id_ensei INT NOT NULL,
   PRIMARY KEY(Id_etu),
   UNIQUE(Mail_etu),
   FOREIGN KEY(Id_ensei) REFERENCES ENSEIGNANT(Id_ensei)
);

CREATE TABLE STAGE(
   Id_stage INT,
   Titre_mission VARCHAR(20) NOT NULL,
   Des_mission VARCHAR(500) NOT NULL,
   Date_deb_stage DATE NOT NULL,
   Date_fin_stage DATE NOT NULL,
   Grati_stage INT NOT NULL,
   Materiel_stage VARCHAR(100) NOT NULL,
   Logiciel_stage VARCHAR(100) NOT NULL,
   Envi_stage VARCHAR(100) NOT NULL,
   Langage_stage VARCHAR(100) NOT NULL,
   Form_ent_stage VARCHAR(10) NOT NULL,
   Form_etu_stage VARCHAR(10) NOT NULL,
   Fond_rapport_note INT,
   Forme_rapport_note INT,
   Fond_soutenance_note INT,
   Forme_soutenance_note INT,
   Jury_soutenance_note INT NOT NULL,
   Methode_ent_note INT,
   Travail_ent_note INT,
   Compor_ent_note INT,
   Type_mission VARCHAR(20) NOT NULL,
   Id_maitreStage INT NOT NULL,
   Siret_ent INT NOT NULL,
   Id_etu INT NOT NULL,
   PRIMARY KEY(Id_stage),
   FOREIGN KEY(Id_maitreStage) REFERENCES MAITRE_STAGE(Id_maitreStage),
   FOREIGN KEY(Siret_ent) REFERENCES ENTREPRISE(Siret_ent),
   FOREIGN KEY(Id_etu) REFERENCES ETUDIANT(Id_etu)
);

CREATE TABLE AVANTAGE(
   Id_avantage INT,
   Repas_avantage TINYINT NOT NULL,
   Transport_avantage TINYINT NOT NULL,
   Heber_avantage TINYINT NOT NULL,
   Autre_avantage VARCHAR(100),
   Id_stage INT NOT NULL,
   PRIMARY KEY(Id_avantage),
   FOREIGN KEY(Id_stage) REFERENCES STAGE(Id_stage)
);

CREATE TABLE ENCADRER(
   Id_etu INT,
   Id_superviseur INT,
   PRIMARY KEY(Id_etu, Id_superviseur),
   FOREIGN KEY(Id_etu) REFERENCES ETUDIANT(Id_etu),
   FOREIGN KEY(Id_superviseur) REFERENCES SUPERVISEUR(Id_superviseur)
);
