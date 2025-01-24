-- Revert fasms-db:create-applicants-table from pg

BEGIN;

DROP TABLE fasms.applicants;

COMMIT;
