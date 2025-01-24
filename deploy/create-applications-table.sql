-- Deploy fasms-db:create-applications-table to pg
-- requires: create-scheme_benefit_mapping-table

BEGIN;

CREATE TABLE fasms.applications (
    id UUID PRIMARY KEY,
    applicant_id UUID REFERENCES fasms.applicants(id),
    scheme_id UUID REFERENCES fasms.schemes(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMIT;
