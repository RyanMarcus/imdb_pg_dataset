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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5162','A5242','B6521','D5263','E3632','H5425','I5216','J1631','J5162','P4525','T5262','V212'))
AND (ci.note in ('(child acting coach)','(co-executive producer)','(executive producer)','(production assistant)','(promo producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','editor','miscellaneous crew','producer'))
AND (it1.id in ('37'))
