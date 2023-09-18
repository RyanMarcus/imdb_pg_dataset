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
AND (n.name_pcode_nf in ('A5652','B6535','C6252','E1635','M5624','M6353','N2426','O2431','P3641','R3264','S2363','S3232'))
AND (ci.note in ('(associate producer)','(based on a story by)','(production assistant)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
