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
AND (n.name_pcode_nf in ('A212','A2532','A4235','D252','E6216','H4236','I252','J213','J2152','J23','J2523','J4253','J4265','J5125','J5425','M6152','M6232','M6256','M6525','N2314','R1524','R4126','S5325','S6536'))
AND (ci.note in ('(associate head writer)','(legal)','(medic) (as Robin Michels)','(producer)','(production assistant)','(production coordinator)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
