-- Revert fasms-db:create-schemes-table from pg

BEGIN;

DROP TABLE fasms.schemes;

COMMIT;
