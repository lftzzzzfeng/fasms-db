-- Revert fasms-db:create-criteria-table from pg

BEGIN;

DROP TABLE fasms.criteria;

COMMIT;
