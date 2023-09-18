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
AND (n.name_pcode_nf in ('A353','A3621','A6524','A6525','C6235','D2361','I252','J2152','J4623','L3253','L5421','N5346','P2423','P3623','R2565','R532','T362','W4532','Y4524'))
AND (ci.note in ('(associate producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','producer'))
AND (it1.id in ('37'))
