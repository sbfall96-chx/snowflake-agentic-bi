-- Example security setup for the Agentic Platform
-- Ensures the Agent operates within a strict security perimeter

USE ROLE ACCOUNTADMIN;

-- 1. Create a specialized Role for the Agent
CREATE ROLE IF NOT EXISTS agentic_bi_role;

-- 2. Grant 'Least Privilege' access to the analytics schema
GRANT USAGE ON DATABASE analytics_db TO ROLE agentic_bi_role;
GRANT USAGE ON SCHEMA analytics_db.refined TO ROLE agentic_bi_role;
GRANT SELECT ON ALL TABLES IN SCHEMA analytics_db.refined TO ROLE agentic_bi_role;

-- 3. Grant access to Cortex AI features
GRANT DEVELOPER ON ACCOUNT TO ROLE agentic_bi_role;

-- 4. Assign the role to the SE demo user
GRANT ROLE agentic_bi_role TO USER JEFF_EDWARDS;
