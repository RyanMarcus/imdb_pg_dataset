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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('A3451','E1463','E4325','E6213','F6312','J2163','J5165','K324','L4256','M5323','M6364','M6426','M6454','N163','P3621','S5415','X52'))
AND (ci.note in ('(as Dr. Joyce Brothers)','(as Mariel)','(associate producer)','(producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','costume designer','producer'))
AND (it1.id in ('37'))
