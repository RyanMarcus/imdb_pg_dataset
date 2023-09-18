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
AND (n.name_pcode_nf in ('A4145','B6535','B6562','G6435','M242','M6514','P3642','R1624'))
AND (ci.note in ('(associate producer)','(director of photography)','(executive producer)','(production staff)','(program liaison) (as Serapio Rosal Jr.)','(title designer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','editor','miscellaneous crew','producer'))
AND (it1.id in ('25'))
