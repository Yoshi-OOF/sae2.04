USE Groupe_23;
CREATE ROLE Secretaire;

GRANT SELECT, UPDATE ON ENTREPRISE(Nom_ent, Naf_ent, Ape_ent, Nom_chef_ent, Prenom_chef_ent, Adresse_chef_ent, Mail_chef_ent) TO Secretaire;
GRANT SELECT, UPDATE ON MAITRE_STAGE(Nom_maitreStage, Prenom_maitreStage, Statut_maitreStage, Poste_maitreStage, Tel_maitreStage, Mail_maitreStage) TO Secretaire;
GRANT SELECT, UPDATE ON SUPERVISEUR(Nom_superviseur, Prenom_superviseur, Statut_superviseur, Poste_superviseur, Tel_superviseur, Mail_superviseur) TO Secretaire;
GRANT SELECT, UPDATE ON ENSEIGNANT(Nom_ensei, Prenom_ensei, Mail_ensei, Resp_stage_ensei) TO Secretaire;
GRANT SELECT, UPDATE ON ETUDIANT(Nom_etu, Prenom_etu, Adresse_etu, Mail_etu, Tel_etu, Attes_etu, Chemin_attes_etu, Valide_attes_etu) TO Secretaire;
GRANT SELECT, UPDATE ON STAGE(Titre_mission ,Des_mission ,Date_deb_stage ,Date_fin_stage ,Grati_stage ,Materiel_stage ,Logiciel_stage,
Envi_stage ,Langage_stage ,Type_mission) TO Secretaire;
GRANT SELECT, UPDATE ON AVANTAGE(Repas_avantage, Transport_avantage, Heber_avantage, Autre_avantage) TO Secretaire;

GRANT SELECT ON STAGE(Fond_rapport_note ,Forme_rapport_note ,Fond_soutenance_note ,Forme_soutenance_note ,Jury_soutenance_note ,Methode_ent_note ,Travail_ent_note,
Compor_ent_note,Form_ent_stage, Form_etu_stage) TO Secretaire;
GRANT SELECT ON MAITRE_STAGE(Accord_resp_stage, Accord_etu_stage) TO Secretaire;


CREATE VIEW vue_secretaire_etudiant AS
SELECT Nom_etu, Prenom_etu, Adresse_etu, Mail_etu, Tel_etu, Attes_etu, Chemin_attes_etu, Valide_attes_etu
FROM ETUDIANT;

CREATE VIEW vue_secretaire_stage AS
SELECT Titre_mission ,Des_mission ,Date_deb_stage ,Date_fin_stage ,Grati_stage ,Materiel_stage ,Logiciel_stage, Envi_stage ,Langage_stage ,
Type_mission , Fond_rapport_note ,Forme_rapport_note ,Fond_soutenance_note ,Forme_soutenance_note ,Jury_soutenance_note ,
Methode_ent_note ,Travail_ent_note, Compor_ent_note,Form_ent_stage, Form_etu_stage
FROM STAGE;

CREATE VIEW vue_secretaire_maitre_stage AS
SELECT Nom_maitreStage, Prenom_maitreStage, Statut_maitreStage, Poste_maitreStage, Tel_maitreStage, Mail_maitreStage
FROM MAITRE_STAGE;

CREATE VIEW vue_secretaire_superviseur AS
SELECT Nom_superviseur, Prenom_superviseur, Statut_superviseur, Poste_superviseur, Tel_superviseur, Mail_superviseur
FROM SUPERVISEUR;

CREATE VIEW vue_secretaire_enseignant AS
SELECT Nom_ensei, Prenom_ensei, Mail_ensei
FROM ENSEIGNANT;

CREATE VIEW vue_secretaire_note AS
SELECT Fond_rapport_note, Forme_rapport_note, Fond_soutenance_note, Forme_soutenance_note, Jury_soutenance_note, Methode_ent_note, Travail_ent_note, Compor_ent_note
FROM STAGE;

GRANT SELECT, UPDATE ON vue_secretaire_maitre_stage TO Secretaire;
GRANT SELECT, UPDATE ON vue_secretaire_superviseur TO Secretaire;
GRANT SELECT, UPDATE ON vue_secretaire_enseignant TO Secretaire;
GRANT SELECT, UPDATE ON vue_secretaire_etudiant TO Secretaire;
GRANT SELECT, UPDATE ON vue_secretaire_stage TO Secretaire;
GRANT SELECT, UPDATE ON vue_secretaire_note TO Secretaire;
