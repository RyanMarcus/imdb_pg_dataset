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
AND (n.name_pcode_nf in ('B5251','D135','D5432','F6525','J23','K3521','L626','M6253','S1253','S2512','S2634','S3154','S5256','S534','T6142'))
AND (ci.note in ('(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','producer','writer'))
AND (it1.id in ('37'))
