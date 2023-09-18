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
AND (n.name_pcode_nf in ('B156','B562','B6252','C5235','C6423','C652','D2452','G6543','J2324','J4163','J4263','J5145','J5265','K152','K1521','M2421','M2565','M3152','P3263','Q5642','S1235','S3154','S4235','T3261'))
AND (ci.note in ('(as The Basic Cable Band)','(creator)','(executive producer)','(producer)','(production assistant)','(technical supervisor) (as Peter Gardiner)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
