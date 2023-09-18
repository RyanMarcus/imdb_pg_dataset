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
AND (n.name_pcode_nf in ('A6536','B1252','C6423','F4351','G6243','G6353','H5141','J5132','J52','L5436','P4626','W4526'))
AND (ci.note in ('(associate producer)','(creator)','(producer)','(studio)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer','writer'))
AND (it1.id in ('31'))
