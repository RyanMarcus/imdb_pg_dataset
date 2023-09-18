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
AND (n.name_pcode_nf in ('A3521','C4613','D512','D5462','E6242','H2636','J5232','J5623','K3653','M2635','M6353','N3415','N3526','P2435','T5316','W4562'))
AND (ci.note in ('(director of photography)','(line producer)','(producer)','(production assistant)','(program associate)','(script assistant)','(script coordinator)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','costume designer','editor','miscellaneous crew','producer','production designer'))
AND (it1.id in ('37'))
