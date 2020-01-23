--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("SIGNDATE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PW" NOT NULL ENABLE);
