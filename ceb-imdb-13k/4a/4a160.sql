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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4253','A5362','A5364','C453','C62','D5453','D6326','E5624','F5245','H3614','J2152','J2525','K5253','L235','L2412','L265','M1436','M6352','R3536','S3152','S636','T2352','Z2521'))
AND (ci.note in ('(Animax Asia dub)','(deko operator)','(director of photography)','(producer)','(production coordinator)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
