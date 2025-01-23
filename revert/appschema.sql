-- Revert fasms-db:appschema from pg

BEGIN;

DROP SCHEMA fasms;

COMMIT;
