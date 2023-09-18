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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('B6162','C5354','C6563','E4163','J2154','J4526','K6426','L235','L4521','L6321','L6534','M13','M2524','M2635','N2421','P4521','S1626','S5265','T3526'))
AND (ci.note in ('(executive producer)','(post production producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','producer'))
AND (it1.id in ('22'))
