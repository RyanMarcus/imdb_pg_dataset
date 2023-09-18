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
AND (n.name_pcode_nf in ('A2352','A4163','A5365','C6216','C6232','D252','G4163','J236','J265','M5421','M6342','S3151','S5242'))
AND (ci.note IS NULL)
AND (rt.role in ('actor','actress','director'))
AND (it1.id in ('22'))
