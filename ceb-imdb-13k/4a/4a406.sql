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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A4536','B4241','B5165','C5254','C6252','D1316','D1325','G1641','H6243','K3625','L616','M5142','N2132','S4524','T521','V6254','W4132','Y2526'))
AND (ci.note in ('(co-executive producer)','(executive producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','producer'))
AND (it1.id in ('37'))
