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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A2313','C4526','C6245','E6245','F6362','F6531','F6535','J154','J2124','J5161','J5352','J6325','K3653','K5235','L6525','M2415','M6252','M6325','M6353','N2432','N3413','N3523','P3645','R5142','T5352'))
AND (ci.note in ('(associate producer)','(co-executive producer)','(creator)','(location)','(operations manager)','(producer)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
