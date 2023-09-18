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
AND (n.name_pcode_nf in ('A5424','C6262','E3632','F1632','F4631','F6526','H53','J3253','J5624','K23','L4512','M6262','N2425','W4361'))
AND (ci.note in ('(co-executive producer)','(director of photography)','(producer)','(script supervisor)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
