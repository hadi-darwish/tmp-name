-- Revert evently:users from pg

BEGIN;

-- XXX Add DDLs here.
DROP TABLE IF EXISTS evently.users;

COMMIT;
