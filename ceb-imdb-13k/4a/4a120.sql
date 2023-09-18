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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('A3232','A3652','A645','B4353','B6562','G5256','G6326','J2126','K1625','K2161','P1545','R5645'))
AND (ci.note in ('(creator)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','editor','writer'))
AND (it1.id in ('31'))
