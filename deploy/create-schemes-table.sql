-- Deploy fasms-db:create-schemes-table to pg
-- requires: create-applicants-table

BEGIN;

CREATE TABLE fasms.schemes (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX schemes_name_idx ON fasms.schemes(name);

COMMIT;
