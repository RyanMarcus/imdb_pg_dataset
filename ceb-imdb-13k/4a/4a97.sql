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
AND (n.name_pcode_nf in ('B6353','C6514','L6436','N2421','P2621','P6252','P6362','T1615'))
AND (ci.note in ('(as Miki Manojlovic)','(location manager)','(producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('31'))
