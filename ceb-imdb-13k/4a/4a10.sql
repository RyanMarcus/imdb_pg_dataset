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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4253','B6535','C6262','D5234','J216','J2425','L6521','M2545','R1631','R2616','R5316','S3152'))
AND (ci.note in ('(producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','producer'))
AND (it1.id in ('37'))
