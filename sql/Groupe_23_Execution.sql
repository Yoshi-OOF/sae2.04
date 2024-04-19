-- Règle 17.1 : 

-- Voir tous les étudiants
USE Groupe_23;
SELECT * FROM vue_secretaire_etudiant;

-- Voir tous les stages
USE Groupe_23;
SELECT * FROM vue_secretaire_stage;

-- Voir tous les maitre de stage
USE Groupe_23;
SELECT * FROM vue_secretaire_maitre_stage;

-- Voir tous les superviseurs
USE Groupe_23;
SELECT * FROM vue_secretaire_superviseur;

-- Voir tous les enseignants
USE Groupe_23;
SELECT * FROM vue_secretaire_enseignant;

-- Modifier un étudiant
USE Groupe_23;
UPDATE ETUDIANT SET Chemin_attes_etu = 'C:\Users\Emma\Documents\attes' WHERE Mail_etu = 'emma.bertrand.etu@univ-lemans.fr';

-- Modifier une entreprise
USE Groupe_23;
UPDATE ENTREPRISE SET Adresse_chef_ent = '123 Avenue des Champs Élysées' WHERE Mail_chef_ent = 'lucas.martel@ecodynamics.com';
UPDATE ENTREPRISE SET Nom_chef_ent = 'BARDOU', Prenom_chef_ent = 'Maxime', Adresse_chef_ent = '35 rue des Hortensias, 75002 Paris', Mail_chef_ent = 'maxime.bardou@sogeti.com'
WHERE Adresse_chef_ent = 'damien.roux@findway.com' AND Nom_ent = 'VINCI Energies Systèmes d''Information';

-- Modifier un maitre de stage
USE Groupe_23;
UPDATE MAITRE_STAGE SET Poste_maitreStage = 'CDD' WHERE Mail_maitreStage = 'thierry.couanon@bsnmedical.com';
UPDATE MAITRE_STAGE SET Tel_maitreStage = '0748256739' WHERE Mail_maitreStage = 'pierre.tijou@shortways.com';

--Modifier un superviseur 
USE Groupe_23;
UPDATE SUPERVISEUR SET Statut_superviseur = 'Contractuel' WHERE Mail_superviseur = 'lucie.martin@corp.com';
UPDATE SUPERVISEUR SET Poste_superviseur = 'Consultant IT' WHERE Mail_superviseur = 'alexandre.richard@marketingcorp.com';

-- Règle 17.2 : 
-- voir les notes d'un étudiant
USE Groupe_23;
SELECT S.Id_stage, S.Titre_mission, S.Fond_rapport_note, S.Forme_rapport_note, S.Fond_soutenance_note, S.Forme_soutenance_note, S.Jury_soutenance_note, 
S.Methode_ent_note, S.Travail_ent_note, S.Compor_ent_note FROM STAGE S
JOIN ETUDIANT E ON S.Id_etu = E.Id_etu WHERE E.Mail_etu = 'leo.bertrand.etu@univ-lemans.fr';

SELECT Nom_ent, Naf_ent, Ape_ent, Nom_chef_ent, Prenom_chef_ent, Adresse_chef_ent, Mail_chef_ent FROM ENTREPRISE;


