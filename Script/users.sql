
select USER from dual;

CREATE ROLE APP_OWNER IDENTIFIED BY blender;
CREATE ROLE DEVELOPER IDENTIFIED BY blender;
CREATE ROLE TESTER;
CREATE ROLE ANALYST;
CREATE ROLE SERVICE;
CREATE ROLE SECURITY IDENTIFIED BY blender;

/*
SELECT *
FROM dba_role_privs 
where GRANTED_ROLE IN ('ADMIN', 'APP_OWNER', 'DEVELOPER', 'TESTER', 'ANALYST', 'SERVICE', 'SECURITY');
*/

CREATE USER JARVIS IDENTIFIED BY Blender12345;
CREATE USER HARRY IDENTIFIED BY Blender12345;
CREATE USER PETER IDENTIFIED BY Blender12345;
CREATE USER TOM IDENTIFIED BY Blender12345;
CREATE USER HARVEY IDENTIFIED BY Blender12345;
CREATE USER JESSY IDENTIFIED BY Blender12345;

/*
select * from dba_users where username in ('HARRY', 'JARVIS', 'PETER', 'TOM', 'HARVEY', 'JESSY');
*/

GRANT INSERT, UPDATE, DELETE, SELECT
ON CUSTOMERS
TO APP_OWNER;

GRANT APP_OWNER TO JARVIS;

SELECT * FROM session_roles;


