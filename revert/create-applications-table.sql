-- Revert fasms-db:create-applications-table from pg

BEGIN;

DROP TABLE fasms.applications;

COMMIT;
