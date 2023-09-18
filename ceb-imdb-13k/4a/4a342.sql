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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('D2416','D5451','E6216','J1524','J2342','J5162','L4565','L5162','M6263','P4254','S3154','S3536'))
AND (ci.note in ('(associate producer)','(executive producer)','(production accountant) (as Jeffrey Angulo)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
