--names and types
select distinct name, type, count(*) from (
select 'ak', name, type from pragma_table_info('ak_flood_lines') union
select 'al', name, type from pragma_table_info('al_flood_lines') union
select 'ar', name, type from pragma_table_info('ar_flood_lines') union
select 'az', name, type from pragma_table_info('az_flood_lines') union
select 'ca', name, type from pragma_table_info('ca_flood_lines') union
select 'co', name, type from pragma_table_info('co_flood_lines') union
select 'ct', name, type from pragma_table_info('ct_flood_lines') union
select 'dc', name, type from pragma_table_info('dc_flood_lines') union
select 'de', name, type from pragma_table_info('de_flood_lines') union
select 'fl', name, type from pragma_table_info('fl_flood_lines') union
select 'ga', name, type from pragma_table_info('ga_flood_lines') union
select 'hi', name, type from pragma_table_info('hi_flood_lines') union
select 'ia', name, type from pragma_table_info('ia_flood_lines') union
select 'id', name, type from pragma_table_info('id_flood_lines') union
select 'il', name, type from pragma_table_info('il_flood_lines') union
select 'in', name, type from pragma_table_info('in_flood_lines') union
select 'ks', name, type from pragma_table_info('ks_flood_lines') union
select 'ky', name, type from pragma_table_info('ky_flood_lines') union
select 'la', name, type from pragma_table_info('la_flood_lines') union
select 'ma', name, type from pragma_table_info('ma_flood_lines') union
select 'md', name, type from pragma_table_info('md_flood_lines') union
select 'me', name, type from pragma_table_info('me_flood_lines') union
select 'mi', name, type from pragma_table_info('mi_flood_lines') union
select 'mn', name, type from pragma_table_info('mn_flood_lines') union
select 'mo', name, type from pragma_table_info('mo_flood_lines') union
select 'ms', name, type from pragma_table_info('ms_flood_lines') union
select 'mt', name, type from pragma_table_info('mt_flood_lines') union
select 'nc', name, type from pragma_table_info('nc_flood_lines') union
select 'nd', name, type from pragma_table_info('nd_flood_lines') union
select 'ne', name, type from pragma_table_info('ne_flood_lines') union
select 'nh', name, type from pragma_table_info('nh_flood_lines') union
select 'nj', name, type from pragma_table_info('nj_flood_lines') union
select 'nm', name, type from pragma_table_info('nm_flood_lines') union
select 'nv', name, type from pragma_table_info('nv_flood_lines') union
select 'ny', name, type from pragma_table_info('ny_flood_lines') union
select 'oh', name, type from pragma_table_info('oh_flood_lines') union
select 'ok', name, type from pragma_table_info('ok_flood_lines') union
select 'or', name, type from pragma_table_info('or_flood_lines') union
select 'pa', name, type from pragma_table_info('pa_flood_lines') union
select 'ri', name, type from pragma_table_info('ri_flood_lines') union
select 'sc', name, type from pragma_table_info('sc_flood_lines') union
select 'sd', name, type from pragma_table_info('sd_flood_lines') union
select 'tn', name, type from pragma_table_info('tn_flood_lines') union
select 'tx', name, type from pragma_table_info('tx_flood_lines') union
select 'ut', name, type from pragma_table_info('ut_flood_lines') union
select 'va', name, type from pragma_table_info('va_flood_lines') union
select 'vt', name, type from pragma_table_info('vt_flood_lines') union
select 'wa', name, type from pragma_table_info('wa_flood_lines') union
select 'wi', name, type from pragma_table_info('wi_flood_lines') union
select 'wv', name, type from pragma_table_info('wv_flood_lines') union
select 'wy', name, type from pragma_table_info('wy_flood_lines') 
) group by name, type order by name, type;

--look for nulls and which tables they are in (pi_flag)
select distinct PI_FLAG, HH_FLAG, count(*) from (
select  PI_FLAG, HH_FLAG from ak_flood_lines union all
select  PI_FLAG, HH_FLAG from al_flood_lines union all
select  PI_FLAG, HH_FLAG from ar_flood_lines union all
select  PI_FLAG, HH_FLAG from az_flood_lines union all
select  PI_FLAG, HH_FLAG from ca_flood_lines union all
select  PI_FLAG, HH_FLAG from co_flood_lines union all
select  PI_FLAG, HH_FLAG from ct_flood_lines union all
select  PI_FLAG, HH_FLAG from dc_flood_lines union all
select  PI_FLAG, HH_FLAG from de_flood_lines union all
select  PI_FLAG, HH_FLAG from fl_flood_lines union all
select  PI_FLAG, HH_FLAG from ga_flood_lines union all
select  PI_FLAG, HH_FLAG from hi_flood_lines union all
select  PI_FLAG, HH_FLAG from ia_flood_lines union all
select  PI_FLAG, HH_FLAG from id_flood_lines union all
select  PI_FLAG, HH_FLAG from il_flood_lines union all
select  PI_FLAG, HH_FLAG from in_flood_lines union all
select  PI_FLAG, HH_FLAG from ks_flood_lines union all
select  PI_FLAG, HH_FLAG from ky_flood_lines union all
select  PI_FLAG, HH_FLAG from la_flood_lines union all
select  PI_FLAG, HH_FLAG from ma_flood_lines union all
select  PI_FLAG, HH_FLAG from md_flood_lines union all
select  PI_FLAG, HH_FLAG from me_flood_lines union all
select  PI_FLAG, HH_FLAG from mi_flood_lines union all
select  PI_FLAG, HH_FLAG from mn_flood_lines union all
select  PI_FLAG, HH_FLAG from mo_flood_lines union all
select  PI_FLAG, HH_FLAG from ms_flood_lines union all
select  PI_FLAG, HH_FLAG from mt_flood_lines union all
select  PI_FLAG, HH_FLAG from nc_flood_lines union all
select  PI_FLAG, HH_FLAG from nd_flood_lines union all
select  PI_FLAG, HH_FLAG from ne_flood_lines union all
select  PI_FLAG, HH_FLAG from nh_flood_lines union all
select  PI_FLAG, HH_FLAG from nj_flood_lines union all
select  PI_FLAG, HH_FLAG from nm_flood_lines union all
select  PI_FLAG, HH_FLAG from nv_flood_lines union all
select  PI_FLAG, HH_FLAG from ny_flood_lines union all
select  PI_FLAG, HH_FLAG from oh_flood_lines union all
select  PI_FLAG, HH_FLAG from ok_flood_lines union all
select  PI_FLAG, HH_FLAG from or_flood_lines union all
select  PI_FLAG, HH_FLAG from pa_flood_lines union all
select  PI_FLAG, HH_FLAG from ri_flood_lines union all
select  PI_FLAG, HH_FLAG from sc_flood_lines union all
select  PI_FLAG, HH_FLAG from sd_flood_lines union all
select  PI_FLAG, HH_FLAG from tn_flood_lines union all
select  PI_FLAG, HH_FLAG from tx_flood_lines union all
select  PI_FLAG, HH_FLAG from ut_flood_lines union all
select  PI_FLAG, HH_FLAG from va_flood_lines union all
select  PI_FLAG, HH_FLAG from vt_flood_lines union all
select  PI_FLAG, HH_FLAG from wa_flood_lines union all
select  PI_FLAG, HH_FLAG from wi_flood_lines union all
select  PI_FLAG, HH_FLAG from wv_flood_lines union all
select  PI_FLAG, HH_FLAG from wy_flood_lines 
) where PI_FLAG is null
group by PI_FLAG, hh_flag order by pi_flag, hh_flag;

--look for nulls and the table they're in (pi_flag)
SELECT DISTINCT table_name, PI_FLAG, HH_FLAG, COUNT(*) 
FROM (
    SELECT 'ak_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ak_flood_lines UNION ALL
    SELECT 'al_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM al_flood_lines UNION ALL
    SELECT 'ar_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ar_flood_lines UNION ALL
    SELECT 'az_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM az_flood_lines UNION ALL
    SELECT 'ca_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ca_flood_lines UNION ALL
    SELECT 'co_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM co_flood_lines UNION ALL
    SELECT 'ct_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ct_flood_lines UNION ALL
    SELECT 'dc_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM dc_flood_lines UNION ALL
    SELECT 'de_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM de_flood_lines UNION ALL
    SELECT 'fl_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM fl_flood_lines UNION ALL
    SELECT 'ga_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ga_flood_lines UNION ALL
    SELECT 'hi_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM hi_flood_lines UNION ALL
    SELECT 'ia_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ia_flood_lines UNION ALL
    SELECT 'id_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM id_flood_lines UNION ALL
    SELECT 'il_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM il_flood_lines UNION ALL
    SELECT 'in_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM in_flood_lines UNION ALL
    SELECT 'ks_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ks_flood_lines UNION ALL
    SELECT 'ky_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ky_flood_lines UNION ALL
    SELECT 'la_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM la_flood_lines UNION ALL
    SELECT 'ma_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ma_flood_lines UNION ALL
    SELECT 'md_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM md_flood_lines UNION ALL
    SELECT 'me_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM me_flood_lines UNION ALL
    SELECT 'mi_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mi_flood_lines UNION ALL
    SELECT 'mn_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mn_flood_lines UNION ALL
    SELECT 'mo_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mo_flood_lines UNION ALL
    SELECT 'ms_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ms_flood_lines UNION ALL
    SELECT 'mt_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mt_flood_lines UNION ALL
    SELECT 'nc_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nc_flood_lines UNION ALL
    SELECT 'nd_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nd_flood_lines UNION ALL
    SELECT 'ne_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ne_flood_lines UNION ALL
    SELECT 'nh_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nh_flood_lines UNION ALL
    SELECT 'nj_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nj_flood_lines UNION ALL
    SELECT 'nm_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nm_flood_lines UNION ALL
    SELECT 'nv_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nv_flood_lines UNION ALL
    SELECT 'ny_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ny_flood_lines UNION ALL
    SELECT 'oh_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM oh_flood_lines UNION ALL
    SELECT 'ok_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ok_flood_lines UNION ALL
    SELECT 'or_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM or_flood_lines UNION ALL
    SELECT 'pa_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM pa_flood_lines UNION ALL
    SELECT 'ri_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ri_flood_lines UNION ALL
    SELECT 'sc_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM sc_flood_lines UNION ALL
    SELECT 'sd_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM sd_flood_lines UNION ALL
    SELECT 'tn_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM tn_flood_lines UNION ALL
    SELECT 'tx_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM tx_flood_lines UNION ALL
    SELECT 'ut_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ut_flood_lines UNION ALL
    SELECT 'va_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM va_flood_lines UNION ALL
    SELECT 'vt_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM vt_flood_lines UNION ALL
    SELECT 'wa_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wa_flood_lines UNION ALL
    SELECT 'wi_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wi_flood_lines UNION ALL
    SELECT 'wv_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wv_flood_lines UNION ALL
    SELECT 'wy_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wy_flood_lines
) where PI_FLAG is null
group by PI_FLAG, hh_flag order by pi_flag, hh_flag;

--look for nulls and the table they're in (hh_flag)
SELECT DISTINCT table_name, PI_FLAG, HH_FLAG, COUNT(*) 
FROM (
    SELECT 'ak_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ak_flood_lines UNION ALL
    SELECT 'al_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM al_flood_lines UNION ALL
    SELECT 'ar_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ar_flood_lines UNION ALL
    SELECT 'az_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM az_flood_lines UNION ALL
    SELECT 'ca_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ca_flood_lines UNION ALL
    SELECT 'co_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM co_flood_lines UNION ALL
    SELECT 'ct_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ct_flood_lines UNION ALL
    SELECT 'dc_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM dc_flood_lines UNION ALL
    SELECT 'de_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM de_flood_lines UNION ALL
    SELECT 'fl_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM fl_flood_lines UNION ALL
    SELECT 'ga_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ga_flood_lines UNION ALL
    SELECT 'hi_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM hi_flood_lines UNION ALL
    SELECT 'ia_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ia_flood_lines UNION ALL
    SELECT 'id_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM id_flood_lines UNION ALL
    SELECT 'il_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM il_flood_lines UNION ALL
    SELECT 'in_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM in_flood_lines UNION ALL
    SELECT 'ks_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ks_flood_lines UNION ALL
    SELECT 'ky_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ky_flood_lines UNION ALL
    SELECT 'la_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM la_flood_lines UNION ALL
    SELECT 'ma_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ma_flood_lines UNION ALL
    SELECT 'md_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM md_flood_lines UNION ALL
    SELECT 'me_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM me_flood_lines UNION ALL
    SELECT 'mi_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mi_flood_lines UNION ALL
    SELECT 'mn_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mn_flood_lines UNION ALL
    SELECT 'mo_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mo_flood_lines UNION ALL
    SELECT 'ms_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ms_flood_lines UNION ALL
    SELECT 'mt_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM mt_flood_lines UNION ALL
    SELECT 'nc_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nc_flood_lines UNION ALL
    SELECT 'nd_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nd_flood_lines UNION ALL
    SELECT 'ne_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ne_flood_lines UNION ALL
    SELECT 'nh_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nh_flood_lines UNION ALL
    SELECT 'nj_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nj_flood_lines UNION ALL
    SELECT 'nm_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nm_flood_lines UNION ALL
    SELECT 'nv_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM nv_flood_lines UNION ALL
    SELECT 'ny_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ny_flood_lines UNION ALL
    SELECT 'oh_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM oh_flood_lines UNION ALL
    SELECT 'ok_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ok_flood_lines UNION ALL
    SELECT 'or_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM or_flood_lines UNION ALL
    SELECT 'pa_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM pa_flood_lines UNION ALL
    SELECT 'ri_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ri_flood_lines UNION ALL
    SELECT 'sc_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM sc_flood_lines UNION ALL
    SELECT 'sd_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM sd_flood_lines UNION ALL
    SELECT 'tn_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM tn_flood_lines UNION ALL
    SELECT 'tx_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM tx_flood_lines UNION ALL
    SELECT 'ut_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM ut_flood_lines UNION ALL
    SELECT 'va_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM va_flood_lines UNION ALL
    SELECT 'vt_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM vt_flood_lines UNION ALL
    SELECT 'wa_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wa_flood_lines UNION ALL
    SELECT 'wi_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wi_flood_lines UNION ALL
    SELECT 'wv_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wv_flood_lines UNION ALL
    SELECT 'wy_flood_lines' AS table_name, PI_FLAG, HH_FLAG FROM wy_flood_lines
) where HH_FLAG is null
group by PI_FLAG, hh_flag order by pi_flag, hh_flag;

--look for distinct flag values+combos
SELECT PI_FLAG, HH_FLAG,  COUNT(*)
FROM (
select  PI_FLAG, HH_FLAG from ak_flood_lines union all
select  PI_FLAG, HH_FLAG from al_flood_lines union all
select  PI_FLAG, HH_FLAG from ar_flood_lines union all
select  PI_FLAG, HH_FLAG from az_flood_lines union all
select  PI_FLAG, HH_FLAG from ca_flood_lines union all
select  PI_FLAG, HH_FLAG from co_flood_lines union all
select  PI_FLAG, HH_FLAG from ct_flood_lines union all
select  PI_FLAG, HH_FLAG from dc_flood_lines union all
select  PI_FLAG, HH_FLAG from de_flood_lines union all
select  PI_FLAG, HH_FLAG from fl_flood_lines union all
select  PI_FLAG, HH_FLAG from ga_flood_lines union all
select  PI_FLAG, HH_FLAG from hi_flood_lines union all
select  PI_FLAG, HH_FLAG from ia_flood_lines union all
select  PI_FLAG, HH_FLAG from id_flood_lines union all
select  PI_FLAG, HH_FLAG from il_flood_lines union all
select  PI_FLAG, HH_FLAG from in_flood_lines union all
select  PI_FLAG, HH_FLAG from ks_flood_lines union all
select  PI_FLAG, HH_FLAG from ky_flood_lines union all
select  PI_FLAG, HH_FLAG from la_flood_lines union all
select  PI_FLAG, HH_FLAG from ma_flood_lines union all
select  PI_FLAG, HH_FLAG from md_flood_lines union all
select  PI_FLAG, HH_FLAG from me_flood_lines union all
select  PI_FLAG, HH_FLAG from mi_flood_lines union all
select  PI_FLAG, HH_FLAG from mn_flood_lines union all
select  PI_FLAG, HH_FLAG from mo_flood_lines union all
select  PI_FLAG, HH_FLAG from ms_flood_lines union all
select  PI_FLAG, HH_FLAG from mt_flood_lines union all
select  PI_FLAG, HH_FLAG from nc_flood_lines union all
select  PI_FLAG, HH_FLAG from nd_flood_lines union all
select  PI_FLAG, HH_FLAG from ne_flood_lines union all
select  PI_FLAG, HH_FLAG from nh_flood_lines union all
select  PI_FLAG, HH_FLAG from nj_flood_lines union all
select  PI_FLAG, HH_FLAG from nm_flood_lines union all
select  PI_FLAG, HH_FLAG from nv_flood_lines union all
select  PI_FLAG, HH_FLAG from ny_flood_lines union all
select  PI_FLAG, HH_FLAG from oh_flood_lines union all
select  PI_FLAG, HH_FLAG from ok_flood_lines union all
select  PI_FLAG, HH_FLAG from or_flood_lines union all
select  PI_FLAG, HH_FLAG from pa_flood_lines union all
select  PI_FLAG, HH_FLAG from ri_flood_lines union all
select  PI_FLAG, HH_FLAG from sc_flood_lines union all
select  PI_FLAG, HH_FLAG from sd_flood_lines union all
select  PI_FLAG, HH_FLAG from tn_flood_lines union all
select  PI_FLAG, HH_FLAG from tx_flood_lines union all
select  PI_FLAG, HH_FLAG from ut_flood_lines union all
select  PI_FLAG, HH_FLAG from va_flood_lines union all
select  PI_FLAG, HH_FLAG from vt_flood_lines union all
select  PI_FLAG, HH_FLAG from wa_flood_lines union all
select  PI_FLAG, HH_FLAG from wi_flood_lines union all
select  PI_FLAG, HH_FLAG from wv_flood_lines union all
select  PI_FLAG, HH_FLAG from wy_flood_lines 
)as combined
group by PI_FLAG, HH_FLAG
order by PI_FLAG, HH_FLAG;
