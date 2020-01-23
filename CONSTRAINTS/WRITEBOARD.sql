--------------------------------------------------------
--  Constraints for Table WRITEBOARD
--------------------------------------------------------

  ALTER TABLE "WRITEBOARD" ADD PRIMARY KEY ("SEQ") ENABLE;
  ALTER TABLE "WRITEBOARD" MODIFY ("TEXT" NOT NULL ENABLE);
  ALTER TABLE "WRITEBOARD" MODIFY ("TITLE" NOT NULL ENABLE);
