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
AND (n.name_pcode_nf in ('A4526','A5361','A5362','B4125','C62','E2615','H2426','I245','K1352','L5162','R2562','S415','T65','Y6524'))
AND (ci.note in ('(clearance supervisor)','(co-executive producer)','(main title design)','(producer)','(production assistant)','(voice: English version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
