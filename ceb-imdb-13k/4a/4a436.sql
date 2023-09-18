SELECT COUNT(*)
FROM
name as n,
aka_name as an,
info_type as it1,
person_info as pi1,
cast_info as ci,
role_type as rt
WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A3562','A45','B3245','D365','J512','L2326','M3146','M6252','R5235','V4614','Y2565'))
AND (ci.note in ('(assistant location manager)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('actor','costume designer','director','miscellaneous crew'))
AND (it1.id in ('32'))
