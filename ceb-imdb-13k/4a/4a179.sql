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
AND (n.name_pcode_nf in ('A3524','A4253','B6565','D5262','J5245','M5262','M5265','W4152') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(producer)','(storyliner)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('editor','producer','production designer','writer'))
AND (it1.id in ('19'))
