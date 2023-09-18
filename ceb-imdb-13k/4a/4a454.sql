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
AND (n.name_pcode_nf in ('B5254','B6362','C2616','C5463','D5414','E6561','H3453','K3656','M2326','M3164','R1616','R1636','S2621','S3542','S5216','S543','W','W4321','Y232'))
AND (ci.note in ('(associate producer)','(co-executive producer)','(credit only)','(executive producer)','(producer)','(production assistant)','(production coordinator)','(re-edited international version)','(voice: Japanese version)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
