-- create tablespace
CREATE TABLESPACE EBMS_USER_DATA
DATAFILE 'EBMS_USER_DATA.ORA' SIZE 256M
DEFAULT STORAGE
( INITIAL 16K
NEXT 16K
MINEXTENTS 1
MAXEXTENTS UNLIMITED
PCTINCREASE 50
) ONLINE;
CREATE TEMPORARY TABLESPACE EBMS_TEMPORARY_DATA
TEMPFILE 'EBMS_TEMPORARY_DATA.ORA' SIZE 64M
EXTENT MANAGEMENT LOCAL;

-- verify tablespace
SELECT
 TABLESPACE_NAME,
 STATUS
FROM DBA_TABLESPACES;

-- Create a database user by executing the following statements:
CREATE USER ebms
IDENTIFIED BY ebms
DEFAULT TABLESPACE EBMS_USER_DATA
TEMPORARY TABLESPACE EBMS_TEMPORARY_DATA;

-- Verify the database user created by executing the following statement:
SELECT USERNAME
FROM sys.dba_users;

-- Grant create session, create table, create sequence, and create view privileges to the user by executing the following statement:
GRANT CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW, CREATE PROCEDURE TO ebms;

-- Allocate unlimited quota on tablespace to the database user by executing the following statements:
ALTER USER ebms
QUOTA UNLIMITED ON EBMS_USER_DATA;