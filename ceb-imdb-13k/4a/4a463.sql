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
AND (n.name_pcode_nf in ('F6316','G524','K4621','L5241','M1431','M5345','M6364','R1216','S52','S6156','T215','T435','Y53'))
AND (ci.note in ('(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer'))
AND (it1.id in ('26'))
