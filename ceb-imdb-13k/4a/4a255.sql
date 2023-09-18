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
AND (n.name_pcode_nf in ('B2416','D5262','E2562','G65','K3652','M2145','M6316','S1653','S415','T2516','V6314'))
AND (ci.note in ('(as Mirtha Ibarra)','(as Teagan)','(executive producer)','(nucleus director)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','costume designer','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
