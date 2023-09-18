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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4523','A6535','B1453','B4135','B6535','C6241','D1352','D525','E6265','G5615','J4232','J5161','K6423','L6252','M5256','M6132','M6252','M6265','N12','P3631','P4152','S2345','T62','V4535'))
AND (ci.note in ('(co-producer)','(executive assistant to Bonnie Hunt)','(executive producer)','(location coordinator)','(location manager)','(producer)','(production coordinator) (as Mari Carmen Moreno Laguillo)','(production coordinator)','(production staff)','(researcher)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer','costume designer','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('19'))
