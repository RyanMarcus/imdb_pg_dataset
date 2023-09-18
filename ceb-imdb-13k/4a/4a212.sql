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
AND (n.name_pcode_nf in ('C2414','D1314','D1352','D3636','E6414','I1541','J2143','J2165','J2612','K3651','K5165','L524','L5353','R1436','T5213','T5265'))
AND (ci.note in ('(producer)','(production assistant)','(segment producer)','(story)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
