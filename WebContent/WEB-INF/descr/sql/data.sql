------------------------------------------
-- -------- POPULATE ALL TABLES ----------
------------------------------------------


-- -------- POPULATE TABLE "MODULE" ----------

INSERT INTO APP.MODULE (OID, MODULE_ID, MODULE_NAME) VALUES (1, 'sv1', 'Customers');
INSERT INTO APP.MODULE (OID, MODULE_ID, MODULE_NAME) VALUES (2, 'sv3', 'Administrators');



-- -------- POPULATE TABLE "GROUP" ----------

INSERT INTO "APP"."GROUP" (OID, GROUP_NAME, MODULE_OID) VALUES (1, 'Customers', 1);
INSERT INTO "APP"."GROUP" (OID, GROUP_NAME, MODULE_OID) VALUES (2, 'Administrators', 2);


-- -------- POPULATE TABLE "GROUP_MODULETABLE" ----------

INSERT INTO APP.GROUP_MODULE (GROUP_OID, MODULE_OID) VALUES (1, 1);
INSERT INTO APP.GROUP_MODULE (GROUP_OID, MODULE_OID) VALUES (2, 2);

-- -------- POPULATE TABLE "USER" ----------

INSERT INTO "APP"."USER" (OID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, GENDER, BIRTHDATE, GROUP_OID) VALUES (1, 'user', 'user', 'user@test.com','user','user','male','12/12/1989','wakirox gabriel',  1);
INSERT INTO "APP"."USER" (OID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, GENDER, BIRTHDATE, GROUP_OID) VALUES (2, 'admin', 'admin', 'admin@test.com','admin','admin','female','12/12/1989','wakirox marius',  2);

-- -------- POPULATE TABLE "USER_GROUP" ----------

INSERT INTO APP.USER_GROUP (USER_OID, GROUP_OID) VALUES (1, 1);
INSERT INTO APP.USER_GROUP (USER_OID, GROUP_OID) VALUES (2, 2);