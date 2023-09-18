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
AND (n.name_pcode_nf in ('A145','A4535','C3265','E6212','F4212','G4136','J14','J53','L5253','M2412','M2465','M341','M343','P3521','P365','R5342','T525','T6326','T6525','W4653','W5323','Y6234','Z3524'))
AND (ci.note in ('(archive footage)','(creator)','(director of photography)','(executive producer) (as Randy Zisk)','(executive producer)','(producer)','(voice director)','(voice) (as Lani Tupu)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
