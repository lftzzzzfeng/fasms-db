-- Revert fasms-db:create-benefits-table from pg

BEGIN;

DROP TABLE fasms.benefits;

COMMIT;
