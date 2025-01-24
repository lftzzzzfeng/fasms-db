-- Revert fasms-db:create-scheme_criterion_mapping-table from pg

BEGIN;

DROP TABLE fasms.scheme_criterion_mapping;

COMMIT;
