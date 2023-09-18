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
AND (n.name_pcode_nf in ('A2356','A425','B6535','D134','G6243','J1616','J5236','J6253','M2426','R1634','R5436','S5256','T5236','T5245','T6162'))
AND (ci.note in ('(executive producer)','(overall in charge of promotion)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
