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
AND (n.name_pcode_nf in ('A3651','A5365','B6324','B6536','G1645','H4521','J5253','J54','J565','M3452','M4262','M6254','P3623','T5214','V4356'))
AND (ci.note IS NULL)
AND (rt.role in ('actor','actress'))
AND (it1.id in ('32'))
