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
AND (n.name_pcode_nf in ('C4523','D1326','G4253','G4531','G6345','H653','J232','J2524','J2625','J5165','J525','K535','K6421','L2436','M25','P3626','P5342','S1235','S6562'))
AND (ci.note in ('(actors director)','(archive footage)','(producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
