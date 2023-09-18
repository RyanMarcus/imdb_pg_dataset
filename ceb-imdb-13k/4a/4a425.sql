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
AND (n.name_pcode_nf in ('A4535','B5251','F632','G5435','G6216','G6234','J1435','J4236','J5245','J6564','K5364','M525','P24','P3523','P6235'))
AND (ci.note in ('(account executive) (uncredited)','(executive producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','miscellaneous crew','producer','production designer'))
AND (it1.id in ('34'))
