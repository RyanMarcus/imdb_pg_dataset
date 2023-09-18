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
AND (n.name_pcode_nf in ('A1623','A1652','A4521','C5254','D5424','D6435','E3265','G5635','G6312','G6435','K4265','K5452','L5363','M2345','N2525','O4216','O6453','P36','P3626','P41','P4252','R2523','S312','S4615','W345'))
AND (ci.note in ('(creator)','(credit only)','(executive producer)','(producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','producer','writer'))
AND (it1.id in ('25'))
