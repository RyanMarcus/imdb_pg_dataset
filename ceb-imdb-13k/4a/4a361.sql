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
AND (n.name_pcode_nf in ('A4163','A4253','A5325','B6165','C4163','E153','F3531','G4321','G5341','J2351','J2523','J545','L5','L6512','M2414','M32','M5314','N351','N4316','P3614','S245','S3154'))
AND (ci.note in ('(archive footage)','(as Ally Fowler)','(associate producer)','(creator)','(developer)','(executive producer)','(presenter)','(producer)','(production coordinator)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
