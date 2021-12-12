select USER from dual;

select * from ADMIN.car;

SELECT * FROM user_role_privs;
SELECT * FROM role_sys_privs;
SELECT * FROM role_tab_privs;

select owner from ALL_TABLES where TABLE_NAME ='CAR';
select * from DBA_ROLE_PRIVS where grantee = 'ADMIN';
select * from ALL_TABLES where OWNER = 'JARVIS';
