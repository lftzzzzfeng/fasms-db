-- Deploy fasms-db:create-family-table to pg
-- requires: appschema

BEGIN;

CREATE TABLE fasms.families (
    id UUID PRIMARY KEY,
    address TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX familie_address_idx ON fasms.families(address);

COMMIT;
