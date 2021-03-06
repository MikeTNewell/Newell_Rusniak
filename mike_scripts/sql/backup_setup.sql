create directory export_dmp_dir as 'D:\oracle\exports';
grant read, write on directory export_dmp_dir to oraexport;
GRANT IMP_FULL_DATABASE TO ORAEXPORT;
GRANT EXP_FULL_DATABASE TO ORAEXPORT;
ALTER USER ORAEXPORT DEFAULT ROLE ALL;
GRANT CREATE TABLE TO ORAEXPORT;
GRANT CREATE SESSION TO ORAEXPORT;
GRANT CREATE ANY DIRECTORY TO ORAEXPORT;
GRANT UNLIMITED TABLESPACE TO ORAEXPORT;
GRANT EXECUTE ON SYS.DBMS_DEFER_IMPORT_INTERNAL TO ORAEXPORT;
GRANT EXECUTE ON SYS.DBMS_EXPORT_EXTENSION TO ORAEXPORT;

CREATE USER RMAN
IDENTIFIED BY VALUES 'AA55AFBC50245A70'
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
PROFILE DEFAULT
ACCOUNT UNLOCK;
  
GRANT RESOURCE TO RMAN;
GRANT CONNECT TO RMAN;
GRANT RESOURCE TO RMAN;
ALTER USER RMAN DEFAULT ROLE ALL;
GRANT UNLIMITED TABLESPACE TO RMAN;
ALTER USER RMAN QUOTA UNLIMITED ON USERS;

