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
AND (n.name_pcode_nf in ('A4163','B6524','B6535','C6426','G6212','M2425','R1632','S3152','W4524'))
AND (ci.note in ('(producer)','(production assistant)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
