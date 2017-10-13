--------------------------------------------------------
-- Archivo creado  - viernes-octubre-13-2017   
--------------------------------------------------------
DROP TABLE "ANSWERS" cascade constraints;
DROP TABLE "ATTENDANCE" cascade constraints;
DROP TABLE "COURSES" cascade constraints;
DROP SEQUENCE "ANSWER_SEQUENCE";
--------------------------------------------------------
--  DDL for Sequence ANSWER_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ANSWER_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ANSWERS
--------------------------------------------------------

  CREATE TABLE "ANSWERS" 
   (	"ID" NUMBER(*,0), 
	"NUMBER_OF_QUESTION" VARCHAR2(225), 
	"ANSWER" VARCHAR2(225)
   ) ;
--------------------------------------------------------
--  DDL for Table ATTENDANCE
--------------------------------------------------------

  CREATE TABLE "ATTENDANCE" 
   (	"ID" NUMBER(*,0), 
	"STUDENT_ID" NUMBER(*,0), 
	"COURSE_ID" NUMBER(*,0), 
	"ATTENDANCE_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table COURSES
--------------------------------------------------------

  CREATE TABLE "COURSES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(225), 
	"CODE" VARCHAR2(225), 
	"DATE_START" DATE, 
	"DATE_END" DATE
   ) ;
REM INSERTING into ANSWERS
SET DEFINE OFF;
REM INSERTING into ATTENDANCE
SET DEFINE OFF;
REM INSERTING into COURSES
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007002
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007002" ON "COURSES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007007
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007007" ON "ATTENDANCE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007011
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007011" ON "ANSWERS" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table ANSWERS
--------------------------------------------------------

  ALTER TABLE "ANSWERS" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ANSWERS" MODIFY ("ANSWER" NOT NULL ENABLE);
  ALTER TABLE "ANSWERS" MODIFY ("NUMBER_OF_QUESTION" NOT NULL ENABLE);
  ALTER TABLE "ANSWERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ATTENDANCE" MODIFY ("ATTENDANCE_DATE" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("COURSE_ID" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COURSES
--------------------------------------------------------

  ALTER TABLE "COURSES" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "COURSES" MODIFY ("DATE_END" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("DATE_START" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("ID" NOT NULL ENABLE);
