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
AND (n.name_pcode_nf in ('B6512','C6236','D5425','J2145','J2152','J2536','L2512','L5264','L626','M2416','M3262','P4515','R1632','R525','S6252') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(continuity)','(producer)','(production assistant)','(production coordinator)','(script supervisor)','(segment producer)','(supervising producer)','(technical advisor)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
