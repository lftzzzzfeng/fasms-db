-- Deploy fasms-db:create-applicants-table to pg
-- requires: create-family-table

BEGIN;

CREATE TABLE fasms.applicants (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    sex TEXT NOT NULL,
    ic TEXT NOT NULL,
    family_id UUID REFERENCES fasms.families(id),
    relationship TEXT,
    employment_status TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX applicants_ic_idx ON fasms.applicants(ic);

COMMIT;
