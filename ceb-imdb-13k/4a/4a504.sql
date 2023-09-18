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
AND (n.name_pcode_nf in ('A5164','A5323','D5234','D5452','E5252','G6253','J252','J56','L4525','T6236'))
AND (ci.note in ('(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('22'))
