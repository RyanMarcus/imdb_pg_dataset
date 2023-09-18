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
AND (n.name_pcode_nf in ('C4625','E4546','F3624','G5432','G6231','H3653','H6323','I352','J5125','L2642','L626','M2425','P3653','R2632','S3152','T534','T6523','V2346','V4656'))
AND (ci.note in ('(executive producer)','(producer)','(series creator)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','producer','writer'))
AND (it1.id in ('32'))
