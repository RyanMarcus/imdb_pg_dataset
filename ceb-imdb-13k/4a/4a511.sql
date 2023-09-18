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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5362','B6162','C6126','I5262','J54','K3525','M2346','P3653','R2524','R3542'))
AND (ci.note in ('(adprom manager)','(child acting coach)','(executive producer)','(production assistant)','(production coordinator)','(story editor)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer'))
AND (it1.id in ('34'))
