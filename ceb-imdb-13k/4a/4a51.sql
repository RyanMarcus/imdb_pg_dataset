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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A6453','C6256','D6525','F6343','F6523','J3251','J454','L1565','L6212','O5651','S125','S5152','W4525'))
AND (ci.note in ('(executive producer)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','producer'))
AND (it1.id in ('19'))
