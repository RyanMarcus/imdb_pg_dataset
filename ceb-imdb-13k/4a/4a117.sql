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
AND (n.name_pcode_nf in ('A4163','A4526','A5352','B6535','C6231','C6426','F6521','G6212','M5456','P3623','P3625','R1632') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(executive producer)','(producer)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('19'))
