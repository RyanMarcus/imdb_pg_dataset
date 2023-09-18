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
AND (n.name_pcode_nf in ('A6351','B6321','B6535','C2612','D1365','E6212','G125','G3526','G4513','H6315','J2561','J26','J5153','J5215','K252','L535','O3452','R2421','R2631','S452','T6142','T6263','W4636','X5361'))
AND (ci.note in ('(credit only)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','production designer','writer'))
AND (it1.id in ('22'))
