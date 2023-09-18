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
AND (n.name_pcode_nf in ('A3412','A4514','B1523','B1561','D1356','F6525','G356','H634','J2625','K4235','L5325','M4615','M5153','P1413','P4321','S6352','T652','U3412'))
AND (ci.note in ('(as Girls Aloud)','(associate producer)','(co-producer)','(consulting producer)','(creator)','(producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','producer','writer'))
AND (it1.id in ('32'))
