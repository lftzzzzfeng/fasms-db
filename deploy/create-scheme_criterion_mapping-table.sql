-- Deploy fasms-db:create-scheme_criterion_mapping-table to pg
-- requires: create-criteria-table

BEGIN;

CREATE TABLE fasms.scheme_criterion_mapping (
    scheme_id UUID REFERENCES fasms.schemes(id),
    criterion_id UUID REFERENCES fasms.criteria(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (scheme_id, criterion_id)
);

COMMIT;
