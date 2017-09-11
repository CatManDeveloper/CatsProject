CREATE TABLE PROPERTIES(
  ID NUMBER NOT NULL,
  KEY VARCHAR2(150) NOT NULL,
  VALUE VARCHAR2(150),
  CONSTRAINT PK_ID PRIMARY KEY(ID)
);

CREATE SEQUENCE PROPERTY_SEQUENCE;

CREATE TABLE PASSWORDS(
  ID NUMBER NOT NULL,
  HASH VARCHAR2(32),
  CONSTRAINT PAS_PK_ID PRIMARY KEY (ID)
);
CREATE SEQUENCE PASSWORDS_SEQ;

CREATE TABLE LOGINS(
  ID NUMBER NOT NULL,
  LOGIN VARCHAR2(32),
  CONSTRAINT LOG_PK_ID PRIMARY KEY (ID)
);
CREATE SEQUENCE LOGINS_SEQ;

CREATE TABLE USERS(
  ID NUMBER NOT NULL ,
  NAME VARCHAR2(100),
  SUR_NAME VARCHAR2(100),
  PATR_NAME VARCHAR2(100),
  EMAIL VARCHAR2(100),
  NETWORKS_ID INTEGER,
  LOGIN_ID INTEGER NOT NULL,
  CONSTRAINT USER_PK_ID PRIMARY KEY (ID),
  CONSTRAINT LOGIN_FK FOREIGN KEY (LOGIN_ID) REFERENCES LOGINS (ID)

);
CREATE SEQUENCE USERS_ID_SEQ;
CREATE INDEX  "NETWORK_INDEX" ON USERS (NETWORKS_ID);
CREATE INDEX  "LOGIN_INDEX" ON USERS (LOGIN_ID);

CREATE TABLE  NETWORKS(
  ID NUMBER NOT NULL,
  TYPE VARCHAR2(50),
  VK_ACCESS_TOKEN VARCHAR2(200),
  CONSTRAINT NET_PK_ID PRIMARY KEY (ID)
);
CREATE SEQUENCE NETWORKS_ID_SEQ;

CREATE TABLE OPERATIONS(
  ID NUMBER NOT NULL,
  TYPE VARCHAR2(32),
  CONSTRAINT OPER_PK_ID PRIMARY KEY (ID)
);
CREATE SEQUENCE OPERATIONS_SEQ;

CREATE TABLE USERS_OPERATIONS(
  USER_ID NUMBER NOT NULL ,
  OPERATION_ID NUMBER NOT NULL,
  CONSTRAINT FK_USER_ID_U_O FOREIGN KEY (USER_ID) REFERENCES USERS(ID),
  CONSTRAINT FK_OPER_ID_U_O FOREIGN KEY (OPERATION_ID) REFERENCES OPERATIONS(ID)
)