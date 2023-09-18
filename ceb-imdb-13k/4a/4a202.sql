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
AND (n.name_pcode_nf in ('A424','A5215','A5231','A5316','A5362','C4632','C54','E4563','F3516','I1562','J345','J5235','K346','M3521','M62','P3616','R2326','S6562','T5625','V2423','Y25'))
AND (ci.note in ('(director of photography) (as Elmer Haresco Despa)','(location unit manager)','(producer)','(script supervisor)','(technical supervisor)','(teleprompter operator)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
