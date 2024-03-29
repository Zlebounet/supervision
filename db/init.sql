CREATE DATABASE SuperHillRom;
use SuperHillRom;

DROP TABLE IF EXISTS CoordAndMap;
DROP TABLE IF EXISTS Interfaces;
DROP TABLE IF EXISTS InterDevice;
DROP TABLE IF EXISTS Sector;
DROP TABLE IF EXISTS Map;

CREATE TABLE Sector(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO Sector(name) VALUES ('Server room');
INSERT INTO Sector(name) VALUES ('Administration');
INSERT INTO Sector(name) VALUES ('Expedition');
INSERT INTO Sector(name) VALUES ('ADV');
INSERT INTO Sector(name) VALUES ('Wood factory');
INSERT INTO Sector(name) VALUES ('CSE representatives');
INSERT INTO Sector(name) VALUES ('Stocks');
INSERT INTO Sector(name) VALUES ('R&D Open Office');
INSERT INTO Sector(name) VALUES ('Funiculaire');
INSERT INTO Sector(name) VALUES ('Spare Parts');
INSERT INTO Sector(name) VALUES ('Prod1');
INSERT INTO Sector(name) VALUES ('R&D test lab');
INSERT INTO Sector(name) VALUES ('Guardian');


CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30),
    password VARCHAR(255),
    email VARCHAR(30),
    alerted BOOLEAN

);

INSERT INTO `User` VALUES (3,'youenn','$2b$12$bRIbsqF.LJTGW8QTW8jqvu2vU6ph00i7Y485vP1wYdlM6e3wRGqki','youenn_belz@baxter.com',1);

CREATE TABLE InterDevice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hostName VARCHAR(255),
    address VARCHAR(255),
    systemDev VARCHAR(255),
    stateDev VARCHAR(255),
    typeDev VARCHAR(255),
    packetLoss FLOAT,
    cpuRate FLOAT,
    memoryRate FLOAT,
    sector INT,
    alert BOOLEAN,

    CONSTRAINT fk_InterDevice_Sector
        FOREIGN KEY (sector) REFERENCES Sector(id)
);
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('CFE-SO1MA-AP03', '10.200.100.247',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('CFE-SO1MA-AP02', '10.200.100.188',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF8-AP01',  '10.200.101.2',         'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF12-AP04', '10.200.42.151',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF9-AP03',  '10.200.101.12',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF3-AP07',  '10.200.100.156',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF9-AP02',  '10.200.100.215',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF7-AP02',  '10.200.100.249',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF7-AP01',  '10.200.101.5',         'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF4-AP05',  '10.200.28.157',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF4-AP02',  '10.200.100.171',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF7-AP08',  '10.200.101.27',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-SEC-AP01',   '10.200.100.157',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF12-AP01', '10.200.100.253',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF9-AP01',  '10.200.101.20',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF14-AP01', '10.200.101.16',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('AMS-EXEM1-AP01', '10.200.100.166',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF0-AP03',  '10.200.101.9',         'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF3-AP04',  '10.200.100.151',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF12-AP03', '10.200.100.169',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF3-AP06',  '10.200.100.160',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF10-AP01', '10.200.100.243',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF7-AP05',  '10.200.100.175',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF4-AP07',  '10.200.101.6',         'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF2-AP01',  '10.200.101.18',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('AMS-EXEM1-AP07', '10.200.100.167',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF4-AP04',  '10.200.100.170',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF7-AP09',  '10.200.101.10',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF2-AP02',  '10.200.101.29',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF6-AP01',  '10.200.100.234',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF0-AP01',  '10.200.101.3',         'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF13-AP01', '10.200.100.192',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF12-AP02', '10.200.101.14',        'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF0-AP02',  '10.200.100.241',       'ACCESSPOINT');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('LRT-IDF0-AP05',  '10.200.100.165',       'ACCESSPOINT');

INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('rAWFRplu01-PLU-MANM1-WR01', '10.200.14.2', 'ROUTER', 1);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('rAWFRplu02-PLU-MANM1-WR02', '10.200.14.3', 'ROUTER', 1);


INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('CH01', '10.200.38.34', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('SO01', '10.200.38.35', 'PRINTER');

INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPROD52', '10.200.102.161','PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPROD53', '10.200.22.171', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPROD54', '10.200.102.163','PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPROD57', '10.200.102.187','PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPROD60', '10.200.102.46', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPROD62', '10.200.102.212','PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPROD67', '10.200.102.186','PRINTER');

INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT01', '10.200.102.178', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT02', '10.200.102.172', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT04', '10.200.102.169', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT05', '10.200.102.175', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT06', '10.200.102.177', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT07', '10.200.102.167', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT08', '10.200.102.182', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT10', '10.200.102.174', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT11', '10.200.102.173', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT13', '10.200.102.228', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT15', '10.200.102.151', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT18', '10.200.102.153', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT21', '10.200.102.179', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT22', '10.200.102.164', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT23', '10.200.102.166', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT24', '10.200.102.155', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT26', '10.200.102.238', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT27', '10.200.102.140', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT28', '10.200.102.188', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT31', '10.200.103.4',   'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT32', '10.200.102.190', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT33', '10.200.102.226', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUPRINT34', '10.200.102.222', 'PRINTER');
INSERT INTO InterDevice(hostName, address, typeDEv) VALUES ('PLUPRINT35', '10.200.102.227', 'PRINTER');


INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('10.200.150.1', '10.200.150.1', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('10.200.45.1', '10.200.45.1', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('HREUPLFR-UCS1', '10.200.45.80', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUDSK02', '10.200.0.220', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUESXI03', '10.200.154.60', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUESXI04', '10.200.154.61', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSAINN01', '10.200.154.42', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSAINN02', '10.200.154.43', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSAPTR01', '10.200.154.74', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSAVEEAM02VP', '10.200.154.70', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSCHRC02V', '10.200.154.20', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSD02', '10.200.38.101', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSD03', '10.200.38.103', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUSDSQL01V', '10.200.154.76', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLU-SRM00-SW01', '10.200.14.12', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUUCS01', '10.200.0.223', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUUCS01-A', '10.200.0.221', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('PLUUCS01-B', '10.200.0.222', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('Pluvigner Gateway', '10.200.154.1', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('SCCMDP-PLU', '10.200.4.250', 'SERVER');
INSERT INTO InterDevice(hostName, address, typeDev) VALUES ('SCHSAINN01V', '10.200.154.75', 'SERVER');

INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('IDF0_SWITCH1', '10.200.4.1', 'SWITCH', 1);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu01-PLU-SRI01-SW01', '10.200.0.11', 'SWITCH', 2);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu02-PLU-SRI02-SW01', '10.200.0.21', 'SWITCH', 3);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu03-PLU-SRI03-SW01', '10.200.0.31', 'SWITCH', 4);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu04-PLU-SRI04-SW01', '10.200.0.41', 'SWITCH', 5);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu05-PLU-SRI06-SW01', '10.200.0.61', 'SWITCH', 6);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu06-PLU-SRI07-SW01', '10.200.0.71', 'SWITCH', 8);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu07-PLU-SRI08-SW01', '10.200.0.81', 'SWITCH', 9);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu08-PLU-SRI09-SW01', '10.200.0.91', 'SWITCH', 10);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu09-PLU-SRI10-SW01', '10.200.0.101', 'SWITCH', 11);
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('sALFRplu10-PLU-SRI12-SW01', '10.200.0.123', 'SWITCH', 12);
INSERT INTO InterDevice(hostName, address, typeDev)         VALUES ('sALFRplu11-PLU-SRI13-SW01', '10.200.0.144', 'SWITCH');
INSERT INTO InterDevice(hostName, address, typeDev)         VALUES ('sALFRplu12-PLU-SRI13-SW01', '10.200.0.32', 'SWITCH');
INSERT INTO InterDevice(hostName, address, typeDev)         VALUES ('sALFRplu13-PLU-SRM00-SW01', '10.200.0.4', 'SWITCH');

INSERT INTO InterDevice(hostName, address, typeDev)         VALUES ('sDLFRplu01-PLU-SRM00-SW01', '10.200.0.1', 'SWITCH');
INSERT INTO InterDevice(hostName, address, typeDev, sector) VALUES ('IDF13_SWITCH1', '10.200.44.1', 'SWITCH', 13);


CREATE TABLE Map (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO Map(name) VALUES ("site");
INSERT INTO Map(name) VALUES ("OMD");
INSERT INTO Map(name) VALUES ("wood");
INSERT INTO Map(name) VALUES ("ADV");
INSERT INTO Map(name) VALUES ("guard");
INSERT INTO Map(name) VALUES ("Prod");
INSERT INTO Map(name) VALUES ("Administration");
INSERT INTO Map(name) VALUES ("RD");
INSERT INTO Map(name) VALUES ("Spare_parts");


CREATE TABLE CoordAndMap (
    idMap INT,
    idInterDevice INT,

    x INT,
    y INT,

    CONSTRAINT fk_CoordAndMap_Map
        FOREIGN KEY (idMap) REFERENCES Map(id),

    CONSTRAINT fk_CoordAndMap_InterDevice
        FOREIGN KEY (idInterDevice) REFERENCES InterDevice(id),
    
    CONSTRAINT pk_CoordAndMap
        PRIMARY KEY (idMap, idInterDevice)
);


INSERT INTO CoordAndMap (idMap, idInterDevice, x, y)
VALUES 
(1, 1, 300, 300),
(1, 2, 300, 300),
(1, 3, 300, 300),
(1, 4, 300, 300),
(1, 5, 300, 300),
(1, 6, 300, 300),
(1, 7, 300, 300),
(1, 8, 300, 300),
(1, 9, 300, 300),
(1, 10, 300, 300),
(1, 11, 300, 300),
(1, 12, 300, 300),
(1, 13, 300, 300),
(1, 14, 300, 300),
(1, 15, 300, 300),
(1, 16, 300, 300),
(1, 17, 300, 300),
(1, 18, 300, 300),
(1, 19, 300, 300),
(1, 20, 300, 300),
(1, 21, 300, 300),
(1, 22, 300, 300),
(1, 23, 300, 300),
(1, 24, 300, 300),
(1, 25, 300, 300),
(1, 26, 300, 300),
(1, 27, 300, 300),
(1, 28, 300, 300),
(1, 29, 300, 300),
(1, 30, 300, 300),
(1, 31, 300, 300),
(1, 32, 300, 300),
(1, 33, 300, 300),
(1, 34, 300, 300),
(1, 35, 300, 300),
(1, 36, 300, 300),
(1, 37, 300, 300),
(1, 38, 300, 300),
(1, 39, 300, 300),
(1, 40, 300, 300),
(1, 41, 300, 300),
(1, 42, 300, 300),
(1, 43, 300, 300),
(1, 44, 300, 300),
(1, 45, 300, 300),
(1, 46, 300, 300),
(1, 47, 300, 300),
(1, 48, 300, 300),
(1, 49, 300, 300),
(1, 50, 300, 300),
(1, 51, 300, 300),
(1, 52, 300, 300),
(1, 53, 300, 300),
(1, 54, 300, 300),
(1, 55, 300, 300),
(1, 56, 300, 300),
(1, 57, 300, 300),
(1, 58, 300, 300),
(1, 59, 300, 300),
(1, 60, 300, 300),
(1, 61, 300, 300),
(1, 62, 300, 300),
(1, 63, 300, 300),
(1, 64, 300, 300),
(1, 65, 300, 300),
(1, 66, 300, 300),
(1, 67, 300, 300),
(1, 68, 300, 300),
(1, 69, 300, 300),
(1, 70, 300, 300),
(1, 71, 300, 300),
(1, 72, 300, 300),
(1, 73, 300, 300),
(1, 74, 300, 300),
(1, 75, 300, 300),
(1, 76, 300, 300),
(1, 77, 300, 300),
(1, 78, 300, 300),
(1, 79, 300, 300),
(1, 80, 300, 300),
(1, 81, 300, 300),
(1, 82, 300, 300),
(1, 83, 300, 300),
(1, 84, 300, 300),
(1, 85, 300, 300),
(1, 86, 300, 300),
(1, 87, 300, 300),
(1, 88, 300, 300),
(1, 89, 300, 300),
(1, 90, 300, 300),
(1, 91, 300, 300),
(1, 92, 300, 300),
(1, 93, 300, 300),
(1, 94, 300, 300),
(1, 95, 300, 300),
(1, 96, 300, 300),
(1, 97, 300, 300),
(1, 98, 300, 300),
(1, 99, 300, 300),
(1, 100, 300, 300),
(1, 101, 300, 300),
(1, 102, 300, 300),
(1, 103, 300, 300);




INSERT INTO CoordAndMap (idMap, idInterDevice, x, y) VALUES 
(2, 35, 300, 300),
(2, 33, 300, 300),
(2, 34, 300, 300),
(3, 32, 300, 300),
(3, 31, 300, 300),
(3, 28, 300, 300),
(3, 30, 300, 300),
(3, 29, 300, 300),
(3, 27, 300, 300),
(3, 26, 300, 300),
(4, 25, 300, 300),
(6, 24, 300, 300),
(6, 23, 300, 300),
(6, 22, 300, 300),
(6, 21, 300, 300),
(6, 20, 300, 300),
(6, 18, 300, 300),
(6, 19, 300, 300),
(8, 17, 300, 300),
(8, 16, 300, 300),
(8, 15, 300, 300),
(8, 14, 300, 300),
(7, 13, 300, 300),
(7, 12, 300, 300),
(7, 11, 300, 300),
(7, 10, 300, 300),
(9, 9, 300, 300),
(9, 8, 300, 300),
(9, 7, 300, 300),
(9, 6, 300, 300);



CREATE TABLE Mesure (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idInterDevice INT,
    packetLoss FLOAT,
    cpuRate FLOAT,
    memoryRate FLOAT,
    dateStamp DATE,
    timeStamp TIME,
    status VARCHAR(30),
    pingState VARCHAR(30),

    CONSTRAINT fk_Mesure_InterDevice
        FOREIGN KEY (idInterDevice) REFERENCES InterDevice(id)
);

CREATE TABLE Alert (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idUser INT,
    idInterDevice INT,
    dateSend DATE,
    deviceRun BOOLEAN,

    CONSTRAINT fk_Alert_User
        FOREIGN KEY (idUser) REFERENCES User(id),

    CONSTRAINT fk_Alert_InterDevice
        FOREIGN KEY (idInterDevice) REFERENCES InterDevice(id)
);

CREATE TABLE AreAlerted (
    idInterDevice INT,
    idUser INT,

    CONSTRAINT fk_AreAlerted_InterDevice
        FOREIGN KEY (idInterDevice) REFERENCES InterDevice(id),
    
    CONSTRAINT fk_AreAlerted_User
        FOREIGN KEY (idUser) REFERENCES User(id),
    
    CONSTRAINT pk_AreAlerted
        PRIMARY KEY (idInterDevice, idUser)

);

CREATE OR REPLACE VIEW vue_InterDevice
AS (
    SELECT 
        InterDevice.id,
        InterDevice.hostName, 
        InterDevice.address, 
        InterDevice.systemDev,
        Mesure.status as stateDev,
        InterDevice.typeDev,
        Mesure.packetLoss as packetLoss, 
        Mesure.cpuRate as cpuRate,
        Mesure.memoryRate as memoryRate, 
        InterDevice.sector,
        InterDevice.alert
    FROM 
        InterDevice
    JOIN (
        SELECT 
            idInterDevice,
            MAX(CONCAT(dateStamp, ' ', timeStamp)) AS max_timestamp
        FROM 
            Mesure
        GROUP BY 
            idInterDevice
    ) AS max_timestamps ON InterDevice.id = max_timestamps.idInterDevice
    JOIN Mesure ON Mesure.idInterDevice = InterDevice.id AND CONCAT(Mesure.dateStamp, ' ', Mesure.timeStamp) = max_timestamps.max_timestamp
);

