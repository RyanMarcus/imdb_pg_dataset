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
AND (n.name_pcode_nf in ('E3632','E4214','H2635','J2535','M2162','M62','R2143','R4132','T231','T3525'))
AND (ci.note in ('(producer)','(production assistant)','(voice)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
