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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A5142','F2325','H3525','J2142','J5231','R625','S2363','S5163','V4535'))
AND (ci.note in ('(assistant production coordinator)','(associate producer) (as Fausto Sainz)','(character design)','(executive producer)','(technical director)') OR ci.note IS NULL)
AND (rt.role in ('costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
