-- Règle 17.1 : 

-- Voir tous les étudiants
USE groupe_23;
SELECT * FROM vue_secretaire_etudiant;

-- Voir tous les stages
USE groupe_23;
SELECT * FROM vue_secretaire_stage;

-- Voir tous les maitre de stage
USE groupe_23;
SELECT * FROM vue_secretaire_maitre_stage;

-- Voir tous les superviseurs
USE groupe_23;
SELECT * FROM vue_secretaire_superviseur;

-- Voir tous les enseignants
USE groupe_23;
SELECT * FROM vue_secretaire_enseignant;

-- Modifier un étudiant
USE groupe_23;
UPDATE ETUDIANT SET Chemin_attes_etu = 'C:\Users\Emma\Documents\attes' WHERE Mail_etu = 'emma.bertrand.etu@univ-lemans.fr';

-- Modifier une entreprise
USE Groupe_23;
UPDATE ENTREPRISE SET Adresse_chef_ent = '123 Avenue des Champs Élysées' WHERE Mail_chef_ent = 'lucas.martel@ecodynamics.com';

USE Groupe_23;
UPDATE ENTREPRISE SET Nom_chef_ent = 'BARDOU', Prenom_chef_ent = 'Maxime', Adresse_chef_ent = '35 rue des Hortensias, 75002 Paris', Mail_chef_ent = 'maxime.bardou@sogeti.com'
WHERE Adresse_chef_ent = 'damien.roux@findway.com' AND Nom_ent = 'VINCI Energies Systèmes d''Information';

