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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A3216','A5265','B5636','C4516','C6521','F3621','F4616','H5614','I1521','I2532','J5353','K4514','L2454','L6356','M6213','M6214','M6524','N2431','N3462','P4253','S4141','S5365','T2525','T265','T5146'))
AND (ci.note in ('(creator)','(producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','editor','producer','writer'))
AND (it1.id in ('22'))
