CREATE TABLE Qualite(
    qualite_id INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR(255),
    bonusRarete INT,
    couleur VARCHAR(255)
);

CREATE TABLE TypeArme(
    typeArme_id INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR(255),
    nombreDes INT,
    valeurMax INT,
    multiplicateurCritique INT,
    activationCritique INT);

CREATE TABLE TypeArmure(
    typeArmure_id INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR(255),
    bonusType INT
);

CREATE TABLE arme(
    arme_id INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR(255),
    description VARCHAR(255),
    fk_id_qualite INT DEFAULT NULL REFERENCES Qualite(qualite_id)
                 ON DELETE SET NULL
                 ON UPDATE CASCADE ,
    fk_id_typeArme INT DEFAULT  NULL REFERENCES TypeArme(typeArme_id)
                 ON DELETE SET NULL
                 ON UPDATE CASCADE );

CREATE TABLE armure(
    armure_id INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR(255),
    description VARCHAR(255),
    fk_id_qualite INT DEFAULT NULL REFERENCES Qualite(qualite_id)
                 ON DELETE SET NULL
                 ON UPDATE CASCADE ,
    fk_id_typeArmure INT DEFAULT  NULL REFERENCES TypeArmure(typeArmure_id)
                 ON DELETE SET NULL
                 ON UPDATE CASCADE );

CREATE TABLE potion(
    potion_id INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR(255),
    description VARCHAR(255),
    soin INT
);

CREATE TABLE bombe(
    bombe_id INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR(255),
    description VARCHAR(255),
    nombreDeDes INT,
    maxDe INT
);







