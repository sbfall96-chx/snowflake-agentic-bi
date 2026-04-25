import snowflake.snowpark as snowpark
from snowflake.cortex import Complete

def metadata_handshake_orchestrator(session: snowpark.Session, user_prompt: str):
    """
    Example logic for the 'Analyst Agent'.
    Identifies correct tables and builds governed SQL logic.
    """
    
    # Step 1: System Prompt defining the Data Context
    system_context = """
    You are a Snowflake SQL Architect. Use the information_schema to 
    identify revenue and product tables. Always use CTEs for readability.
    """
    
    # Step 2: Use Snowflake Cortex (Native LLM)
    # No egress - processing stays inside the Snowflake Trust Boundary
    engineered_prompt = f"{system_context} \n User Request: {user_prompt}"
    
    response = Complete("llama3-70b", engineered_prompt)
    
    return response

# Note: In a production environment, this would be deployed 
# as a Snowflake User Defined Function (UDF) via Snowpark.
