-- Revert fasms-db:create-family-table from pg

BEGIN;

DROP TABLE fasms.families;

COMMIT;
