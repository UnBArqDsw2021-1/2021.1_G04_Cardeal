/* Cardeal_L?gico: */

CREATE TABLE PROPERTY (
    street VARCHAR(30),
    number BIGINT(3),
    zipNumber BIGINT(9),
    district VARCHAR(30),
    state VARCHAR(2),
    city VARCHAR(50),
    type VARCHAR(20),
    size BIGINT(5),
    numberBedroom BIGINT(3),
    numberBath BIGINT(3),
    numberPark BIGINT(3),
    idProperty BIGINT(5) PRIMARY KEY,
    idOwner BIGINT(5),
    idRealtor BIGINT(5),
    viewed BIGINT(10),
    value BIGINT(10),
    createdAt DATETIME,
    updatedAt datetime
);

CREATE TABLE SCHEDULE (
    dateMeeting DATETIME,
    createdAt DATETIME,
    idSchedule BIGINT(20) PRIMARY KEY,
    updatedAt DATETIME,
    idProperty BIGINT(5),
    idClient BIGINT(5),
    idRealtor BIGINT(5)
);

CREATE TABLE CLIENT (
    idClient BIGINT(5) PRIMARY KEY,
    createdAt DATETIME,
    updatedAt DATETIME,
    idPerson BIGINT(5)
);

CREATE TABLE REALTOR (
    idRealtor BIGINT(5) PRIMARY KEY,
    passwordHash VARCHAR(500),
    createdAt DATETIME,
    updatedAt DATETIME,
    idPerson BIGINT(5)
);

CREATE TABLE MEDIA (
    idMedia BIGINT(6) PRIMARY KEY,
    name VARCHAR(200),
    url VARCHAR(200),
    createdAt BIGINT(5),
    updateAt DATETIME,
    idProperty BIGINT(5)
);

CREATE TABLE OWNER (
    idOwner BIGINT(5) PRIMARY KEY,
    createdAt DATETIME,
    updatedAt DATETIME,
    idPerson BIGINT(5)
);

CREATE TABLE TENANT (
    idTenant BIGINT(6) PRIMARY KEY,
    createdAt DATETIME,
    updatedAt DATETIME,
    dateBeginRent DATETIME,
    dateEndRent DATETIME,
    idSchedual BIGINT(5)
);

CREATE TABLE PERSON (
    idPerson BIGINT(5) PRIMARY KEY,
    name VARCHAR(200),
    cpf BIGINT(11),
    email VARCHAR(30),
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE telephone (
    idPerson BIGINT(5) NOT NULL,
    telephone BIGINT(20)
);
 
ALTER TABLE PROPERTY ADD CONSTRAINT FK_PROPERTY_2
    FOREIGN KEY (idRealtor)
    REFERENCES REALTOR (idRealtor);
 
ALTER TABLE PROPERTY ADD CONSTRAINT FK_PROPERTY_3
    FOREIGN KEY (idOwner)
    REFERENCES OWNER (idOwner);
 
ALTER TABLE SCHEDULE ADD CONSTRAINT FK_SCHEDULE_2
    FOREIGN KEY (idProperty)
    REFERENCES PROPERTY (idProperty);
 
ALTER TABLE SCHEDULE ADD CONSTRAINT FK_SCHEDULE_3
    FOREIGN KEY (idClient)
    REFERENCES CLIENT (idClient);
 
ALTER TABLE SCHEDULE ADD CONSTRAINT FK_SCHEDULE_4
    FOREIGN KEY (idRealtor)
    REFERENCES REALTOR (idRealtor);
 
ALTER TABLE CLIENT ADD CONSTRAINT FK_CLIENT_2
    FOREIGN KEY (idPerson???)
    REFERENCES ??? (???)
    ON DELETE CASCADE;
 
ALTER TABLE REALTOR ADD CONSTRAINT FK_REALTOR_2
    FOREIGN KEY (FK_SCHEDULE_idSchedule)
    REFERENCES SCHEDULE (idSchedule)
    ON DELETE RESTRICT;
 
ALTER TABLE REALTOR ADD CONSTRAINT FK_REALTOR_3
    FOREIGN KEY (idPerson)
    REFERENCES PERSON (idPerson);
 
ALTER TABLE MEDIA ADD CONSTRAINT FK_MEDIA_2
    FOREIGN KEY (idProperty???)
    REFERENCES PROPERTY (???);
 
ALTER TABLE OWNER ADD CONSTRAINT FK_OWNER_2
    FOREIGN KEY (idPerson???)
    REFERENCES ??? (???)
    ON DELETE CASCADE;
 
ALTER TABLE OWNER ADD CONSTRAINT FK_OWNER_3
    FOREIGN KEY (idProperty)
    REFERENCES PROPERTY (idProperty)
    ON DELETE CASCADE;
 
ALTER TABLE TENANT ADD CONSTRAINT FK_TENANT_2
    FOREIGN KEY (idSchedual???)
    REFERENCES SCHEDULE (???);
 
ALTER TABLE telephone ADD CONSTRAINT FK_telephone_1
    FOREIGN KEY (idPerson???)
    REFERENCES ??? (???);