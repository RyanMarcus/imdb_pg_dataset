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
AND (n.name_pcode_nf in ('A5351','D1341','D5352','D6216','J1362','L2523','R5245','R5435','S5256','S5363','W4125') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','writer'))
AND (it1.id in ('37'))
