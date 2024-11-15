# import the singular good
import sqlite3

# connect to the SQLite database (geopackage)
conn = sqlite3.connect(R'D:\jake_gwre\gwre\qc\ust\ust.gpkg')
cursor = conn.cursor()

# define the specific tables to search
tables_to_include = [('ak_ust'),
('al_ust'),
('ar_ust'),
('az_ust'),
('ca_ust'),
('co_ust'),
('ct_ust'),
('dc_ust'),
('de_ust'),
('fl_ust'),
('ga_ust'),
('hi_ust'),
('ia_ust'),
('id_ust'),
('il_ust'),
('in_ust'),
('ks_ust'),
('ky_ust'),
('la_ust'),
('ma_ust'),
('md_ust'),
('me_ust'),
('mi_ust'),
('mn_ust'),
('mo_ust'),
('ms_ust'),
('mt_ust'),
('nc_ust'),
('nd_ust'),
('ne_ust'),
('nh_ust'),
('nj_ust'),
('nm_ust'),
('nv_ust'),
('ny_ust'),
('oh_ust'),
('ok_ust'),
('or_ust'),
('pa_ust'),
('ri_ust'),
('sc_ust'),
('sd_ust'),
('tn_ust'),
('tx_ust'),
('ut_ust'),
('va_ust'),
('vt_ust'),
('wa_ust'),
('wi_ust'),
('wv_ust'),
('wy_ust')]

# specify the patterns/columns to include
patterns_to_include = ['fid', 'geom', 'FAC_ID', 'NAME', 'ADDRESS', 'STATE', 'CITY', 'ZIPCODE', 'NUM_TANKS', 'LEAKY', 'RUST', 'LAT', 'LONG', 'HH_ID']

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



