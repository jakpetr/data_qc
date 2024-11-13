--names and types
select distinct name, type, count(*) from (
select 'AB', name, type from pragma_table_info('AB_flood_lines') union
select 'BC', name, type from pragma_table_info('BC_flood_lines') union
select 'MB', name, type from pragma_table_info('MB_flood_lines') union
select 'NB', name, type from pragma_table_info('NB_flood_lines') union
select 'NL', name, type from pragma_table_info('NL_flood_lines') union
select 'NS', name, type from pragma_table_info('NS_flood_lines') union
select 'NT', name, type from pragma_table_info('NT_flood_lines') union
select 'NU', name, type from pragma_table_info('NU_flood_lines') union
select 'ON', name, type from pragma_table_info('ON_flood_lines') union
select 'PE', name, type from pragma_table_info('PE_flood_lines') union
select 'QC', name, type from pragma_table_info('QC_flood_lines') union
select 'SK', name, type from pragma_table_info('SK_flood_lines') union
select 'YT', name, type from pragma_table_info('YT_flood_lines') union
) group by name, type order by name, type;

--look for null
select distinct PI_FLAG, HH_FLAG, count(*) from (
select PI_FLAG, HH_FLAG from AB_flood_lines union
select PI_FLAG, HH_FLAG from BC_flood_lines union
select PI_FLAG, HH_FLAG from MB_flood_lines union
select PI_FLAG, HH_FLAG from NB_flood_lines union
select PI_FLAG, HH_FLAG from NL_flood_lines union
select PI_FLAG, HH_FLAG from NS_flood_lines union
select PI_FLAG, HH_FLAG from NT_flood_lines union
select PI_FLAG, HH_FLAG from NU_flood_lines union
select PI_FLAG, HH_FLAG from ON_flood_lines union
select PI_FLAG, HH_FLAG from PE_flood_lines union
select PI_FLAG, HH_FLAG from QC_flood_lines union
select PI_FLAG, HH_FLAG from SK_flood_lines union
select PI_FLAG, HH_FLAG from YT_flood_lines
) where PI_FLAG is null
group by PI_FLAG;

--look for distinct flag values
select distinct PI_FLAG, HH_FLAG, count(*) from (
select PI_FLAG, HH_FLAG from AB_flood_lines union
select PI_FLAG, HH_FLAG from BC_flood_lines union
select PI_FLAG, HH_FLAG from MB_flood_lines union
select PI_FLAG, HH_FLAG from NB_flood_lines union
select PI_FLAG, HH_FLAG from NL_flood_lines union
select PI_FLAG, HH_FLAG from NS_flood_lines union
select PI_FLAG, HH_FLAG from NT_flood_lines union
select PI_FLAG, HH_FLAG from NU_flood_lines union
select PI_FLAG, HH_FLAG from ON_flood_lines union
select PI_FLAG, HH_FLAG from PE_flood_lines union
select PI_FLAG, HH_FLAG from QC_flood_lines union
select PI_FLAG, HH_FLAG from SK_flood_lines union
select PI_FLAG, HH_FLAG from YT_flood_lines
)
group by PI_FLAG, HH_FLAG order by PI_FLAG, HH_FLAG;

--look for distinct flag values+combos
SELECT PI_FLAG, HH_FLAG, PERM_EN, COUNT(*)
FROM (
select PI_FLAG, HH_FLAG, PERM_EN from AB_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from BC_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from MB_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from NB_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from NL_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from NS_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from NT_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from NU_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from ON_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from PE_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from QC_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from SK_flood_lines union all
select PI_FLAG, HH_FLAG, PERM_EN from YT_flood_lines
) AS combined
GROUP BY PI_FLAG, HH_FLAG, PERM_EN
ORDER BY PI_FLAG, HH_FLAG, PERM_EN;

--look for null name(s)
select distinct NAME_EN, NAME_FR, count(*) from (
select NAME_EN, NAME_FR from ab_flood_lines union
select NAME_EN, NAME_FR from bc_flood_lines union
select NAME_EN, NAME_FR from mb_flood_lines union
select NAME_EN, NAME_FR from nb_flood_lines union
select NAME_EN, NAME_FR from nl_flood_lines union
select NAME_EN, NAME_FR from ns_flood_lines union
select NAME_EN, NAME_FR from nt_flood_lines union
select NAME_EN, NAME_FR from nu_flood_lines union
select NAME_EN, NAME_FR from on_flood_lines union
select NAME_EN, NAME_FR from pe_flood_lines union
select NAME_EN, NAME_FR from qc_flood_lines union
select NAME_EN, NAME_FR from sk_flood_lines union
select NAME_EN, NAME_FR from yt_flood_lines
) where NAME_EN is null
group by NAME_EN;