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
AND (n.name_pcode_nf in ('D5215','D5454','I4231','J524','R1516','R2435','S2324','S5253','S5254'))
AND (ci.note in ('(on-set tutor) (as Rachel Graham)','(production accountant)','(production assistant)','(script coordinator)','(unit assistant)') OR ci.note IS NULL)
AND (rt.role in ('composer','costume designer','director','miscellaneous crew'))
AND (it1.id in ('26'))
