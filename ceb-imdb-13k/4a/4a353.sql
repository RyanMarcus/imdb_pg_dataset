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
AND (n.name_pcode_nf in ('B4153','B6161','D1313','D2426','D5626','E5253','J6241','L2314','M252','P3621','P4516','S6264','T6434','Y2525'))
AND (ci.note in ('(creator)','(in-house producer)','(voice: Japanese version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','miscellaneous crew','writer'))
AND (it1.id in ('34'))
