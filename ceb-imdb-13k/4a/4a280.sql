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
AND (n.name_pcode_nf in ('A5','A5314','A6435','B6356','C6252','D3562','D5214','E525','G4521','I415','J434','K1463','K2524','K3126','K6235','N616','R2352','R3232','R5252','S1356','S1563','S6261','T253','Y2365'))
AND (ci.note in ('(as Dhu Moraes)','(producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','producer','production designer'))
AND (it1.id in ('34'))
