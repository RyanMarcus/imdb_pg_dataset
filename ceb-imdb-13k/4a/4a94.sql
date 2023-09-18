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
AND (n.name_pcode_nf in ('A5351','A6543','B2414','B6242','C5652','D165','E6463','G6262','J2123','J2524','K5425','M634','R1426','R2634','R2653','S5145','T563','V3535','W4264','W6535'))
AND (ci.note in ('(archive footage)','(choreographer) (as Kamal)','(executive producer)','(production assistant)','(uncredited)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
