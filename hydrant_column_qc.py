#!/usr/bin/env python
# coding: utf-8

# In[5]:


import sqlite3

# connect to the SQLite database (geopackage)
conn = sqlite3.connect(R'D:\jake_gwre\gwre\gpkg_qc_test\fire-hydrants.gpkg') # update
cursor = conn.cursor()

# define the specific tables to search
tables_to_include = [('ak_fire_hydrants'),
('al_fire_hydrants'),
('ar_fire_hydrants'),
('az_fire_hydrants'),
('ca_fire_hydrants'),
('co_fire_hydrants'),
('ct_fire_hydrants'),
('dc_fire_hydrants'),
('de_fire_hydrants'),
('fl_fire_hydrants'),
('ga_fire_hydrants'),
('hi_fire_hydrants'),
('ia_fire_hydrants'),
('id_fire_hydrants'),
('il_fire_hydrants'),
('in_fire_hydrants'),
('ks_fire_hydrants'),
('ky_fire_hydrants'),
('la_fire_hydrants'),
('ma_fire_hydrants'),
('md_fire_hydrants'),
('me_fire_hydrants'),
('mi_fire_hydrants'),
('mn_fire_hydrants'),
('mo_fire_hydrants'),
('ms_fire_hydrants'),
('mt_fire_hydrants'),
('nc_fire_hydrants'),
('nd_fire_hydrants'),
('ne_fire_hydrants'),
('nh_fire_hydrants'),
('nj_fire_hydrants'),
('nm_fire_hydrants'),
('nv_fire_hydrants'),
('ny_fire_hydrants'),
('oh_fire_hydrants'),
('ok_fire_hydrants'),
('or_fire_hydrants'),
('pa_fire_hydrants'),
('ri_fire_hydrants'),
('sc_fire_hydrants'),
('sd_fire_hydrants'),
('tn_fire_hydrants'),
('tx_fire_hydrants'),
('ut_fire_hydrants'),
('va_fire_hydrants'),
('vt_fire_hydrants'),
('wa_fire_hydrants'),
('wi_fire_hydrants'),
('wv_fire_hydrants'),
('wy_fire_hydrants')]

# specify the patterns/columns to include
patterns_to_include = ['fid', 'geom', 'type', 'state']

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

