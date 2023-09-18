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
AND (n.name_pcode_nf in ('A5236','A5362','B6232','G1645','G6252','J5352','L24','L262','M6214','M6254','M6353','M6425','N2421','R2565','S6163'))
AND (ci.note in ('(producer)') OR ci.note IS NULL)
AND (rt.role in ('actress','producer'))
AND (it1.id in ('26'))
