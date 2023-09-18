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
AND (n.name_pcode_nf in ('A3165','A4263','A5356','B6316','B6512','E6523','H542','I1545','R15','S1312','V5326'))
AND (ci.note in ('(developer)','(executive producer)','(producer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','producer','writer'))
AND (it1.id in ('31'))
