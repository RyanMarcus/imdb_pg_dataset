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
AND (n.name_pcode_nf in ('A4242','D1253','D3562','L4265','L435','M6252','N215','P4261','S3232','S4154','S5214','S5253'))
AND (ci.note in ('(as Dhu Moraes)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer'))
AND (it1.id in ('34'))
