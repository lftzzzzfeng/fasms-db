-- Deploy fasms-db:create-scheme_benefit_mapping-table to pg
-- requires: create-benefits-table

BEGIN;

CREATE TABLE fasms.scheme_benefit_mapping (
    scheme_id UUID REFERENCES fasms.schemes(id),
    benefit_id UUID REFERENCES fasms.benefits(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (scheme_id, benefit_id)
);

COMMIT;
