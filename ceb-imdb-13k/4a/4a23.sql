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
AND (n.name_pcode_nf in ('B6531','C4532','D5361','E2315','G162','H626','J2346','J5236','J5453','L52','M5426','R5341','S53'))
AND (ci.note in ('(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','writer'))
AND (it1.id in ('34'))
