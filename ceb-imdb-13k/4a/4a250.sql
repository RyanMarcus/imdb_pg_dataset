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
AND (n.name_pcode_nf in ('A1243','A4254','A5231','A5242','A5245','C23','C6215','D4163','D525','G6262','J5253','J5362','J5462','K6231','M245','M252','M6243','M6326','P5256','R1565','S1653','S6263','S6523'))
AND (ci.note in ('(Psychologist)','(associate producer)','(director of photography)','(executive producer)','(production assistant)','(production coordinator)','(production secretary)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
