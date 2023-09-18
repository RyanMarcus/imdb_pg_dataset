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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A6543','E4525','F6526','G4163','H5252','I5263','J2163','J5325','K1526','M2454','M6216','M6243','M6353','R532','T5162'))
AND (ci.note IS NULL)
AND (rt.role in ('actor','actress'))
AND (it1.id in ('32'))
