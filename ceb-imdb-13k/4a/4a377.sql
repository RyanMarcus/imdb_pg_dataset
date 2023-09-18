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
AND (n.name_pcode_nf in ('A4253','B4541','D4236','G2635','H652','J46','M6263','M6562','R262','S1526','T3545','T6313','V6513','Z2562','Z6451'))
AND (ci.note in ('(credit only)','(executive assistant)','(executive producer: Syco TV)','(production assistant) (as Ria Theresa May Garcia)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','editor','miscellaneous crew','producer'))
AND (it1.id in ('19'))
