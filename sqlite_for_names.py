#!/usr/bin/env python
# coding: utf-8

# In[1]:


import sqlite3

# connect to the SQLite database (geopackage)
conn = sqlite3.connect(R'D:\jake_gwre\sql\demo\sql_things\new_many_things\many_things.gpkg')
cursor = conn.cursor()

# define the specific tables to search
tables_to_include = ['thing_01', 'thing_02', 'thing_03']

# specify the patterns/columns to include
patterns_to_include = ['fid', 'geom', 'id', 'name', 'city', 'state']

# define ANSI color codes for green and red (probably)
GREEN = "\033[92m"
RED = "\033[91m"
RESET = "\033[0m"

# query to get all table names
cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
tables = cursor.fetchall()

for table in tables:
    table_name = table[0]
    
    # check if the table is in the list of tables to include
    if table_name not in tables_to_include:
        continue
    
    query = f"PRAGMA table_info('{table_name}')"
    cursor.execute(query)
    columns = cursor.fetchall()

    accepted_columns = []
    excluded_columns = []
    
    for column in columns:
        column_name = column[1]  # assuming column name is in the second position***
        # check if the column name matches the patterns to include
        if any(pattern in column_name for pattern in patterns_to_include):
            accepted_columns.append(column_name)
        else:
            excluded_columns.append(column_name)
    
    # print accepted and excluded columns with color highlighting
    print(f"\nTable: {table_name}")
    
    if accepted_columns:
        print(f"{GREEN}Accepted Columns: {', '.join(accepted_columns)}{RESET}")
    if excluded_columns:
        print(f"{RED}Excluded Columns: {', '.join(excluded_columns)}{RESET}")

# close the connection
conn.close()


# In[3]:


import sqlite3
import re

# connect to the db
conn = sqlite3.connect(R'D:\jake_gwre\sql\demo\sql_things\new_many_things\many_things.gpkg')
cursor = conn.cursor()

# fetch patterns to exclude from the existing (exclusion_patterns) table
cursor.execute("SELECT pattern FROM exclusion_patterns;")
patterns_to_exclude = [row[0] for row in cursor.fetchall()]

# define the specific tables you want to include in the query
selected_tables = ['thing_01', 'thing_02', 'thing_03'] 

# define ANSI color codes for green and red (not sure if these will show up well in every console)
GREEN = "\033[92m"
RED = "\033[91m"
RESET = "\033[0m"

for table_name in selected_tables:
    query = f"PRAGMA table_info('{table_name}')"
    cursor.execute(query)
    columns = cursor.fetchall()

    accepted_columns = []
    excluded_columns = []
    
    for column in columns:
        column_name = column[1]
        # check if any column name matches any of the patterns to exclude
        if any(re.search(rf'\b{pattern}\b', column_name) for pattern in patterns_to_exclude):
            excluded_columns.append(column_name)
        else:
            accepted_columns.append(column_name)
    
    # print accepted and excluded columns with color highlighting (green is ok, red is flagged)
    print(f"\nTable: {table_name}")
    
    if accepted_columns:
        print(f"{GREEN}Accepted Columns: {', '.join(accepted_columns)}{RESET}")
    if excluded_columns:
        print(f"{RED}Excluded Columns: {', '.join(excluded_columns)}{RESET}")

# close the connection (probably always)
conn.close()


# In[ ]:




