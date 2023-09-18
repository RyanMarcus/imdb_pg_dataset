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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('D1323','E3632','F5352','J2426','J5312','L5435','R452'))
AND (ci.note in ('(co-executive producer) (as Dave Goetsch)','(creator)','(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','producer','writer'))
AND (it1.id in ('31'))
