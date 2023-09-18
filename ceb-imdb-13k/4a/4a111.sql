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
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5365','C4152','C6452','D65','H6515','I1541','J2163','J5264','L4216','L6526','L6531','M2412','M4263','M5353','M6352','R1632','R4163','S3526','T4635','T5352','U52','V4616'))
AND (ci.note in ('(executive producer)','(producer)','(production accountant)','(production assistant)','(series producer)','(stage manager)','(storyliner)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
