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
AND (n.name_pcode_nf in ('D5136','D5235','D5362','G6214','H43','M2562','S3152','S525'))
AND (ci.note in ('(co-producer)','(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','editor','producer'))
AND (it1.id in ('31'))
