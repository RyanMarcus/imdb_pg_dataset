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
AND (n.name_pcode_nf in ('B6161','J5165','K3654','L6525','M6234','M6241','M6265','N2425') OR n.name_pcode_nf IS NULL)
AND (ci.note IS NULL)
AND (rt.role in ('actress','editor'))
AND (it1.id in ('26'))
