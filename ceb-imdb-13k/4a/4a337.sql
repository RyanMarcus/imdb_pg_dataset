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
AND (n.name_pcode_nf in ('A4126','A5354','B53','C642','E6243','F6526','I5351','J1625','J2414','J2636','J5362','L5','L5263','L6361','M2521','M6325','N1626','Y1262','Y5265'))
AND (ci.note in ('(archive footage)','(co-executive producer)','(developed for television by)','(line producer: FUNimation Entertainment)','(producer)','(uncredited)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
