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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('B52','B6325','E5252','G4562','G5245','J6535','K6232','M6452','P4256','R5235','S3152'))
AND (ci.note in ('(creator)','(producer)','(production coordinator)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('25'))
