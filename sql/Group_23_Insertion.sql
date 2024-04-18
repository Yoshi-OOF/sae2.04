INSERT INTO etudiant VALUES(1, 'Bertrand', 'Emma', '18 Rue de Troy', 'emma.bertrand.etu@univ-lemans.fr', '0783373684', TRUE, 'tongrog/lol', TRUE, 1);
INSERT INTO etudiant VALUES(2, 'Bertrand', 'Léo', '18 Rue de Troy', 'leo.bertrand.etu@univ-lemans.fr', '0783373684', TRUE, 'tongrog/lol', TRUE, 2);
INSERT INTO etudiant VALUES(3, 'Blanc', 'Jade', '18 Rue de Troy', 'jade.blanc.etu@univ-lemans.fr', '0783373684', TRUE, 'tongrog/lol', TRUE, 4);
INSERT INTO etudiant VALUES(4, 'Blanc', 'Lola', '18 Rue de Troy', 'lola.blanc.etu@univ-lemans.fr', '0783373684', TRUE, 'tongrog/lol', TRUE, 5);
INSERT INTO etudiant VALUES(5, 'Blanc', 'Nathan', '18 Rue de Troy', 'nathan.blanc.etu@univ-lemans.fr', '0783373684', TRUE, 'tongrog/lol', TRUE, 3);
INSERT INTO etudiant VALUES(6, 'Blanc', 'Romane', '18 Rue de Troy', 'romane.blanc.etu@univ-lemans.fr', '0783373684', TRUE, 'tongrog/lol', TRUE, 6);

INSERT INTO enseignant VALUES(1, 'Vieillard', 'Nathalie', 'nathalie.vieillard@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(2, 'Ernet', 'Bruno', 'bruno.ernet@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(3, 'Laforcade', 'Pierre', 'pierre.laforcade@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(4, 'Barré', 'Vincent', 'vincent.barre@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(5, 'Marfisi', 'Iza', 'iza.marfisi@univ-lemans.fr', FALSE);
INSERT INTO enseignant VALUES(6, 'Hamon', 'Ludovic', 'Hamon.Ludovic@univ-lemans.fr', TRUE);

INSERT INTO ENTREPRISE VALUES(123456789, 'BSN Medical', '6202A', '62.02A', 'Durand', 'Sophie', '25 rue des Innovateurs', 'sophie.durand@technova.com');
INSERT INTO ENTREPRISE VALUES(987654321, 'CAPGEMINI TECHNOLOGY SERVICES', '3511Z', '35.11Z', 'Martel', 'Lucas', '48 avenue du Progrès', 'lucas.martel@ecodynamics.com');
INSERT INTO ENTREPRISE VALUES(112233445, 'SQUARE1 SOFTWARE LTD', '4773Z', '47.73Z', 'Fontaine', 'Émilie', '32 boulevard des Plantes', 'emilie.fontaine@biohealth.com');
INSERT INTO ENTREPRISE VALUES(556677889, 'VINCI Energies Systèmes d'Information', '6201Z', '62.01Z', 'Roux', 'Damien', '15 rue des Navigateurs', 'damien.roux@findway.com');
INSERT INTO ENTREPRISE VALUES(998877665, 'Capgemini Technology Services', '8020Z', '80.20Z', 'Lemoine', 'Julie', '11 impasse de la Sécurité', 'julie.lemoine@safehome.com');
INSERT INTO ENTREPRISE VALUES(445566778, 'SHORTWAYS', '4631Z', '46.31Z', 'Mercier', 'Antoine', '58 rue des Gourmets', 'antoine.mercier@freshfoodie.com');

INSERT INTO MAITRE_STAGE VALUES(1, 'Thierry', 'COUANON', 'Permanent', 'Responsable RH', '0757593886', 'thierry.couanon@bsnmedical.com', TRUE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(2, 'François', 'LE DILHUIT', 'CDD', 'Chef de projet', '0757006811', 'francois.ledilhuit@capgemini.com', FALSE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(3, 'Roberto', 'PRATO', 'Permanent', 'Directrice technique', '0757572181', 'roberto@square1.io', TRUE, FALSE);
INSERT INTO MAITRE_STAGE VALUES(4, 'Alice', 'LENOBLE', 'Consultant', 'Analyste financier', '0757607076', 'alice.lenoble@vinci-energies.com', TRUE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(5, 'Clément', 'CONNAN', 'Permanent', 'Responsable marketing', '0752881799', 'clement.connan@capgemini.com', FALSE, TRUE);
INSERT INTO MAITRE_STAGE VALUES(6, 'Pierre', 'TIJOU', 'CDD', 'Développeur Senior', '0607943841', 'pierre.tijou@shortways.com', TRUE, FALSE);

INSERT INTO SUPERVISEUR VALUES(1, 'Martin', 'Lucie', 'Permanent', 'Manager', '0754609094', 'lucie.martin@corp.com');
INSERT INTO SUPERVISEUR VALUES(2, 'Bernard', 'Thierry', 'Contractuel', 'Chef de projet', '0644720191', 'thierry.bernard@projects.com');
INSERT INTO SUPERVISEUR VALUES(3, 'Thomas', 'Elodie', 'Permanent', 'Directrice des Opérations', '0600596857', 'elodie.thomas@operations.com');
INSERT INTO SUPERVISEUR VALUES(4, 'Petit', 'Bruno', 'Contractuel', 'Consultant IT', '0641660182', 'bruno.petit@itconsult.com');
INSERT INTO SUPERVISEUR VALUES(5, 'Robert', 'Marie', 'Permanent', 'Responsable R&D', '0757069146', 'marie.robert@innovation.com');
INSERT INTO SUPERVISEUR VALUES(6, 'Richard', 'Alexandre', 'Permanent', 'Directeur Marketing', '0605688590', 'alexandre.richard@marketingcorp.com');

INSERT INTO STAGE VALUES(
    1,'Développement d’une application d’acquisition et de gestion de données ', 'Il s'agit de développer une base de données pour la fabrication des bandes platrées, récupérer
    les informations machine à intégrer dans la base, enregistrer les données et pouvoir les suivre
    de la fabrication des masses à leur conditionnement', '10/04/2017', '31/08/2017', 763, 
    'Ordinateur portable, Accès VPN', 'MySQL serveur', 'Windows 10, Serveur distant', 'SQL', 'envoyé', 'rempli', 
    12, 13, 17, 11, 14, 16, 12, 15, 'Base de données', 1, 123456789, 1);

INSERT INTO STAGE VALUES(
    2,'Consultant JAVA SPRING HADOOP', 'Intégré(e) au sein d’une équipe projet gérant les applications en lien avec les solution de gestion de campagnes 
    IBM Marketing Software et Watson Campaign Automation, vous participerez à la réalisation des versions évolutives des systèmes, et serez amené(e) à 
    intervenir sur les phases de conception technique, réalisation et validation de l’application. Les développements réalisés s’appuieront 
    principalement sur les technologies suivantes : langages SQL, JavaScript, Java, Spring, paramétrage du progiciel IBM Marketing, HSQL (Hadoop), Oracle ODI (ETL)',
    '04/05/2020', '31/07/2020', 782, 
    'Ordinateur portable', 'Eclipse, MySQL serveur', 'Windows 10, Serveur distant', 'SQL, JavaScript, Python', 'non envoyé', 'rempli', 
    8, 11, 10, 7, 14, 11, 12, 12, 'Développement', 2, 987654321, 2);

INSERT INTO STAGE VALUES(
    3,'Mobile Development Internship', 'Take part in the day-day activities of the mobile development team Assist senior members with the development of 
    new app features, Debugging testing and making app changes Work, experience with both iOS and Androïd', '09/04/2018', '22/06/2018', 867, 
    'Ordinateur portable', 'Visual Studio Code, Docker', 'Windows 11, Serveur distant', 'JavaScript, Python', 'non envoyé', 'envoyé', 
    18, 15, 16, 18, 14, 16, 17, 19, 'Mobile', 3, 112233445, 3);

