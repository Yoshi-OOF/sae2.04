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
