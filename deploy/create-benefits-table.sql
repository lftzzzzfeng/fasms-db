-- Deploy fasms-db:create-benefits-table to pg
-- requires: create-scheme_criterion_mapping-table

BEGIN;

CREATE TABLE fasms.benefits (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX benefits_name_idx ON fasms.benefits(name);

COMMIT;
