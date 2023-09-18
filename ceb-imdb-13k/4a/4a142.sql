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
AND (n.name_pcode_nf in ('C6235','D5426','E1263','E2361','E6212','G1426','J43','J5153','J5456','K4123','K6425','L6562','M4232','M6121','M6326','N2423','N3215','N624','R1251','S216','T465','W5324'))
AND (ci.note in ('(senior production accountant)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','miscellaneous crew'))
AND (it1.id in ('22'))
