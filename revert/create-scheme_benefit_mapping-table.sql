-- Revert fasms-db:create-scheme_benefit_mapping-table from pg

BEGIN;

DROP TABLE fasms.scheme_benefit_mapping;

COMMIT;
