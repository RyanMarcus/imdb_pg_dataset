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
AND (n.name_pcode_nf in ('A2363','D5142','G1645','G62','H6431','J5126','J5236','J5363','J56','M525','N5252','P4121','R1631','R24','T53'))
AND (ci.note in ('(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','producer','writer'))
AND (it1.id in ('25'))
