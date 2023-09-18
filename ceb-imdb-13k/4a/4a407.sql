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
AND (n.name_pcode_nf in ('A24','C464','C6451','E6264','E6563','G2414','J5165','L231','L5421','M2426','P6416','S1263','S6454','T612','Y5232'))
AND (ci.note in ('(assistant: Glen & Les Charles)','(credit only)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew'))
AND (it1.id in ('22'))
