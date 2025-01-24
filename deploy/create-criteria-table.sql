-- Deploy fasms-db:create-criteria-table to pg
-- requires: create-schemes-table

BEGIN;

CREATE TABLE fasms.criteria (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    detail TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX criteria_name_idx ON fasms.criteria(name);

COMMIT;
