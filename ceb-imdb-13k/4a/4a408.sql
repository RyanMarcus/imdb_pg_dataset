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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('B6212','C412','J5262','K5126','K5164','L5145','M1526','M2425','P2325','P3125','S5236','S6525','T1526','X52'))
AND (ci.note in ('(archive footage)','(executive producer)','(story editor)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
