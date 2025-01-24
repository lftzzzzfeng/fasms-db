-- Verify fasms-db:create-scheme_benefit_mapping-table on pg

BEGIN;

DROP TABLE fasms.scheme_benefit_mapping;

ROLLBACK;
