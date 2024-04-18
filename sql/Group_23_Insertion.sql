INSERT INTO etudiant VALUES(1, 'Dupond', 'Emma', '38 rue de Neveu', 'emma.Dupond.etu@univ-lemans.fr', '0628657135', TRUE, 'C:\Users\emma\Documents\attestation', FALSE, 1);
INSERT INTO etudiant VALUES(2, 'Bertrand', 'Léo', '85 place de Boulanger', 'leo.bertrand.etu@univ-lemans.fr', '0756985412', TRUE, 'D:\Users\leo\Documents\attestation', TRUE, 2);
INSERT INTO etudiant VALUES(3, 'Petit', 'Jade', '79 rue Lacroix', 'jade.Petit.etu@univ-lemans.fr', '0789654123', TRUE, 'C:\Users\jade\Documents\attestation', FALSE, 3);
INSERT INTO etudiant VALUES(4, 'Leroy', 'Lola', '60 rue René Barthelemy', 'lola.Leroy.etu@univ-lemans.fr', '0625369512', TRUE, 'E:\Users\lola\Documents\attestation', TRUE, 4);
INSERT INTO etudiant VALUES(5, 'Simon', 'Nathan', '6 impasse de Hernandez', 'nathan.Simon.etu@univ-lemans.fr', '0789542475', TRUE, 'C:\Users\nathan\Documents\attestation', FALSE, 5);
INSERT INTO etudiant VALUES(6, 'Fournier', 'Romane', '18 Rue de Troy', 'romane.Fournier.etu@univ-lemans.fr', '0639821734', TRUE, 'D:\Users\romane\Documents\attestation', TRUE, 6);

INSERT INTO enseignant VALUES(1, 'Vieillard', 'Nathalie', 'nathalie.vieillard@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(2, 'Ernet', 'Bruno', 'bruno.ernet@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(3, 'Laforcade', 'Pierre', 'pierre.laforcade@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(4, 'Barré', 'Vincent', 'vincent.barre@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(5, 'Marfisi', 'Iza', 'iza.marfisi@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(6, 'Hamon', 'Ludovic', 'Hamon.Ludovic@univ-lemans.fr', TRUE);

INSERT INTO ENTREPRISE VALUES(123456789, 'TechNova', '6202A', '62.02A', 'Durand', 'Sophie', '25 rue des Innovateurs', 'sophie.durand@technova.com');
INSERT INTO ENTREPRISE VALUES(987654321, 'EcoDynamics', '3511Z', '35.11Z', 'Martel', 'Lucas', '48 avenue du Progrès', 'lucas.martel@ecodynamics.com');
INSERT INTO ENTREPRISE VALUES(112233445, 'BioHealth', '4773Z', '47.73Z', 'Fontaine', 'Émilie', '32 boulevard des Plantes', 'emilie.fontaine@biohealth.com');
INSERT INTO ENTREPRISE VALUES(556677889, 'FindWay', '6201Z', '62.01Z', 'Roux', 'Damien', '15 rue des Navigateurs', 'damien.roux@findway.com');
INSERT INTO ENTREPRISE VALUES(998877665, 'SafeHome', '8020Z', '80.20Z', 'Lemoine', 'Julie', '11 impasse de la Sécurité', 'julie.lemoine@safehome.com');
INSERT INTO ENTREPRISE VALUES(445566778, 'FreshFoodie', '4631Z', '46.31Z', 'Mercier', 'Antoine', '58 rue des Gourmets', 'antoine.mercier@freshfoodie.com');

INSERT INTO MAITRE_STAGE VALUES(1, 'Leroux', 'Marc', 'Permanent', 'Responsable RH', '0757593886', 'marc.leroux@entreprise.com', TRUE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(2, 'Briand', 'Claire', 'CDD', 'Chef de projet', '0757006811', 'claire.briand@projet.com', FALSE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(3, 'Dupuis', 'Stéphanie', 'Permanent', 'Directrice technique', '0757572181', 'stephanie.dupuis@tech.com', TRUE, FALSE);
INSERT INTO MAITRE_STAGE VALUES(4, 'Morin', 'Éric', 'Consultant', 'Analyste financier', '0757607076', 'eric.morin@finance.com', TRUE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(5, 'Perrin', 'Jeanne', 'Permanent', 'Responsable marketing', '0752881799', 'jeanne.perrin@marketing.com', FALSE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(6, 'Leclerc', 'Alain', 'CDD', 'Développeur Senior', '0607943841', 'alain.leclerc@developpeur.com', TRUE, FALSE);

INSERT INTO SUPERVISEUR VALUES(1, 'Martin', 'Lucie', 'Permanent', 'Manager', '0754609094', 'lucie.martin@corp.com');
INSERT INTO SUPERVISEUR VALUES(2, 'Bernard', 'Thierry', 'Contractuel', 'Chef de projet', '0644720191', 'thierry.bernard@projects.com');
INSERT INTO SUPERVISEUR VALUES(3, 'Thomas', 'Elodie', 'Permanent', 'Directrice des Opérations', '0600596857', 'elodie.thomas@operations.com');
INSERT INTO SUPERVISEUR VALUES(4, 'Petit', 'Bruno', 'Contractuel', 'Consultant IT', '0641660182', 'bruno.petit@itconsult.com');
INSERT INTO SUPERVISEUR VALUES(5, 'Robert', 'Marie', 'Permanent', 'Responsable R&D', '0757069146', 'marie.robert@innovation.com');
INSERT INTO SUPERVISEUR VALUES(6, 'Richard', 'Alexandre', 'Permanent', 'Directeur Marketing', '0605688590', 'alexandre.richard@marketingcorp.com');

INSERT INTO STAGE VALUES(
    1,'Développeur Web', 'Conception et développement de nouvelles fonctionnalités pour notre plateforme en ligne.', '2023-01-10', '2023-06-10', 500, 
    'Ordinateur portable, Accès VPN', 'Visual Studio Code, Docker', 'Windows 10, Serveur distant', 'JavaScript, Python', 'Présentielle', 'Distance', 
    12, 13, 17, 11, 14, 16, 12, 15, 'Technique', 1, 123456789, 1001
);


