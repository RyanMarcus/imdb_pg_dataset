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
AND (n.name_pcode_nf in ('A5353','B5342','E5626','G65','H1631','I162','J23','J2326','P4564','S2521','V4231','Y5252'))
AND (ci.note in ('(producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','producer'))
AND (it1.id in ('22'))
