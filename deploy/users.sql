-- Deploy evently:users to pg
-- requires: appschema

BEGIN;

-- XXX Add DDLs here.
SET client_min_messages = 'warning';

CREATE TYPE gender AS ENUM ('male', 'female');

CREATE TABLE IF NOT EXISTS evently.users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  phone_number VARCHAR(45),
  address VARCHAR(255),
  city VARCHAR(45),
  gender gender,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

COMMIT;
