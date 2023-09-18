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
AND (n.name_pcode_nf in ('A6416','B6521','C4316','C5325','D2456','E2325','G1523','H5623','I5353','J1615','J2632','J514','J53','L2626','M3152','M6516','N3153','N3413','N3423','R242','R256','S3141','S5361','T6235','W6531'))
AND (ci.note in ('(as John Foley)','(co-executive producer)','(co-producer)','(creator)','(executive producer)','(master editor)','(producer)','(production secretary)','(script supervisor)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('32'))
