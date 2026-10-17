-- Global Electronics Retail Analysis
-- Step 1: Create the project database tables
-- Database: global_electronics_db

-- Inspect the current database before running.
-- The database itself was created in pgAdmin.

-- List tables in the public schema
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;
