USE Groupe_23;

INSERT INTO ENSEIGNANT VALUES(1, 'Vieillard', 'Nathalie', 'nathalie.vieillard@univ-lemans.fr', 0);
INSERT INTO ENSEIGNANT VALUES(2, 'Ernet', 'Bruno', 'bruno.ernet@univ-lemans.fr', 0);
INSERT INTO ENSEIGNANT VALUES(3, 'Laforcade', 'Pierre', 'pierre.laforcade@univ-lemans.fr', 0);
INSERT INTO ENSEIGNANT VALUES(4, 'Barré', 'Vincent', 'vincent.barre@univ-lemans.fr', 0);
INSERT INTO ENSEIGNANT VALUES(5, 'Marfisi', 'Iza', 'iza.marfisi@univ-lemans.fr', 0);
INSERT INTO ENSEIGNANT VALUES(6, 'Hamon', 'Ludovic', 'Hamon.Ludovic@univ-lemans.fr', 1);

INSERT INTO ETUDIANT VALUES(1, 'Bertrand', 'Emma', '35 rue du Progrès', 'emma.bertrand.etu@univ-lemans.fr', '0783373684', 1, 'tongrog/lol', 1, 1);
INSERT INTO ETUDIANT VALUES(2, 'Bertrand', 'Léo', '32 rue de Innovateurs', 'leo.bertrand.etu@univ-lemans.fr', '0783373684', 1, 'tongrog/lol', 1, 2);
INSERT INTO ETUDIANT VALUES(3, 'Blanc', 'Jade', '48 rue des Navigateurs', 'jade.blanc.etu@univ-lemans.fr', '0783373684', 1, 'tongrog/lol', 1, 4);
INSERT INTO ETUDIANT VALUES(4, 'Blanc', 'Lola', '18 rue de Troy', 'lola.blanc.etu@univ-lemans.fr', '0783373684', 1, 'tongrog/lol', 1, 5);
INSERT INTO ETUDIANT VALUES(5, 'Blanc', 'Nathan', '47 impasse de la Sécurité', 'nathan.blanc.etu@univ-lemans.fr', '0783373684', 1, 'tongrog/lol', 1, 3);
INSERT INTO ETUDIANT VALUES(6, 'Blanc', 'Romane', '12 rue des Gourmets', 'romane.blanc.etu@univ-lemans.fr', '0783373684', 1, 'tongrog/lol', 1, 6);

INSERT INTO ENTREPRISE VALUES(123456789, 'BSN Medical', '6202A', '62.02A', 'Durand', 'Sophie', '25 rue des Innovateurs', 'sophie.durand@technova.com');
INSERT INTO ENTREPRISE VALUES(987654321, 'CAPGEMINI TECHNOLOGY SERVICES', '3511Z', '35.11Z', 'Martel', 'Lucas', '48 avenue du Progrès', 'lucas.martel@ecodynamics.com');
INSERT INTO ENTREPRISE VALUES(112233445, 'SQUARE1 SOFTWARE LTD', '4773Z', '47.73Z', 'Fontaine', 'Émilie', '32 boulevard des Plantes', 'emilie.fontaine@biohealth.com');
INSERT INTO ENTREPRISE VALUES(556677889, 'VINCI Energies Systèmes d''Information', '6201Z', '62.01Z', 'Roux', 'Damien', '15 rue des Navigateurs', 'damien.roux@findway.com');
INSERT INTO ENTREPRISE VALUES(998877665, 'Capgemini Technology Services', '8020Z', '80.20Z', 'Lemoine', 'Julie', '11 impasse de la Sécurité', 'julie.lemoine@safehome.com');
INSERT INTO ENTREPRISE VALUES(445566778, 'SHORTWAYS', '4631Z', '46.31Z', 'Mercier', 'Antoine', '58 rue des Gourmets', 'antoine.mercier@freshfoodie.com');

INSERT INTO MAITRE_STAGE VALUES(1, 'Thierry', 'COUANON', 'Permanent', 'Responsable RH', '0757593886', 'thierry.couanon@bsnmedical.com', 1, 1);
INSERT INTO MAITRE_STAGE VALUES(2, 'François', 'LE DILHUIT', 'CDD', 'Chef de projet', '0757006811', 'francois.ledilhuit@capgemini.com', 0, 1);
INSERT INTO MAITRE_STAGE VALUES(3, 'Roberto', 'PRATO', 'Permanent', 'Directrice technique', '0757572181', 'roberto@square1.io', 1, 0);
INSERT INTO MAITRE_STAGE VALUES(4, 'Alice', 'LENOBLE', 'Consultant', 'Analyste financier', '0757607076', 'alice.lenoble@vinci-energies.com', 1, 1);
INSERT INTO MAITRE_STAGE VALUES(5, 'Clément', 'CONNAN', 'Permanent', 'Responsable marketing', '0752881799', 'clement.connan@capgemini.com', 0, 1);
INSERT INTO MAITRE_STAGE VALUES(6, 'Pierre', 'TIJOU', 'CDD', 'Développeur Senior', '0607943841', 'pierre.tijou@shortways.com', 1, 0);

INSERT INTO SUPERVISEUR VALUES(1, 'Martin', 'Lucie', 'Permanent', 'Manager', '0754609094', 'lucie.martin@corp.com');
INSERT INTO SUPERVISEUR VALUES(2, 'Bernard', 'Thierry', 'Contractuel', 'Chef de projet', '0644720191', 'thierry.bernard@projects.com');
INSERT INTO SUPERVISEUR VALUES(3, 'Thomas', 'Elodie', 'Permanent', 'Directrice des Opérations', '0600596857', 'elodie.thomas@operations.com');
INSERT INTO SUPERVISEUR VALUES(4, 'Petit', 'Bruno', 'Contractuel', 'Consultant IT', '0641660182', 'bruno.petit@itconsult.com');
INSERT INTO SUPERVISEUR VALUES(5, 'Robert', 'Marie', 'Permanent', 'Responsable R&D', '0757069146', 'marie.robert@innovation.com');
INSERT INTO SUPERVISEUR VALUES(6, 'Richard', 'Alexandre', 'Permanent', 'Directeur Marketing', '0605688590', 'alexandre.richard@marketingcorp.com');

INSERT INTO STAGE VALUES(
    1,'Développement d’une application d’acquisition et de gestion de données ', 'Il s''agit de développer une base de données pour la fabrication des bandes platrées, récupérer
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

INSERT INTO STAGE VALUES(
    4,'Analyste Développeur .Net / Sharepoint', 'Vous intégrerez l''équipe chargée des développements des applications ''Collaboratives'' utilisées au sein de 
    VINCI Energies. Au cours de votre stage : • Vous interviendrez sur le développement d’applications C# .net sous SharePoint, 
    • Vous réaliserez la conception et les tests, dans le respect des spécifications établies.', '06/04/2021', '31/07/2021', 658, 
    'Ordinateur portable', 'Eclipse', 'Windows 11, Serveur distant', 'SQL, JavaScript, Python', 'envoyé', 'non envoyé', 
    10, 16, 13, 7, 14, 12, 13, 15, 'Développement', 4, 556677889, 4);

INSERT INTO STAGE VALUES(
    5,'Stage – Projet INDUS DRCIF', 'Indus DRCI est un projet qui s’inscrit dans une démarche d’industrialisation du Groupe Capgemini.
    Son objectif est de fournir des services réseaux et applicatifs aux projets sécurisés Confidentiel Industrie (CI) et Diffusion Restreinte (DR) 
    sur le territoire français. Ces services sont proposés à une soixantaine de projets réunissant approximativement 1300 utilisateurs.', 
    '19/04/2022', '01/07/2022', 625, 'Ordinateur portable', 'Visual Studio Code, Docker', 'Windows 11, Serveur distant', 'JavaScript, Python', 
    'rempli', 'envoyé', 17, 15, 13, 18, 14, 17, 16, 18, 'Développement', 5, 998877665, 5);

INSERT INTO STAGE VALUES(
    6,'Conception, développement et évolution des produits Shortways', 'Le but de cette mission est d''intégrer le stagiaire à notre équipe de 
    Recherche et Développement. La mission comprendra des phases d''analyse (définition du besoin), de développement, de tests et d''intégration. 
    Le stagiaire sera amené à travailler sur les différentes parties de notre solution logicielle ainsi que ses différents langages : ''front'' (Javascript), 
    serveur (Scala), base de données (MySQL, Redis), infrastructure (Docker, Kubernetes).', 
    '11/05/2020', '24/07/2020', 596, 'Ordinateur portable', 'Visual Studio Code, Docker', 'Windows 11, Serveur distant', 'JavaScript, Python', 
    'rempli', 'envoyé', 17, 15, 13, 18, 14, 17, 16, 18, 'Développement', 6, 445566778, 6);

INSERT INTO AVANTAGE VALUES(1, 1, 1, 0, 'Bon ''achat', 1);
INSERT INTO AVANTAGE VALUES(2, 0, 1, 1, 'Abonnement gym', 2);
INSERT INTO AVANTAGE VALUES(3, 1, 0, 1, 'Carte de transport', 3);
INSERT INTO AVANTAGE VALUES(4, 1, 1, 1, NULL, 4);
INSERT INTO AVANTAGE VALUES(5, 0, 0, 0, 'Accès à des formations en ligne', 5);
INSERT INTO AVANTAGE VALUES(6, 1, 1, 0, 'Participation à des conférences', 6);

INSERT INTO ENCADRER VALUES(1, 6);
INSERT INTO ENCADRER VALUES(2, 5);
INSERT INTO ENCADRER VALUES(3, 4);
INSERT INTO ENCADRER VALUES(4, 3);
INSERT INTO ENCADRER VALUES(5, 2);
INSERT INTO ENCADRER VALUES(6, 1);
