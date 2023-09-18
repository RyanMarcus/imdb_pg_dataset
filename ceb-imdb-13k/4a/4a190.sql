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
AND (n.name_pcode_nf in ('A4163','A5351','B6535','C4135','C5165','G2316','H4532','H5256','I2625','J652','P3623','P426','R2632','R5324','T534'))
AND (ci.note in ('(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','producer'))
AND (it1.id in ('31'))
