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
AND (n.name_pcode_nf in ('C6252','F3624','J2143','J2325','J5235','M2351','M652','P142','T6365') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(adr voice director)','(associate head writer) (as Jim Houghton)','(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('22'))
