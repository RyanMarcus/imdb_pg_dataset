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
AND (n.name_pcode_nf in ('A4514','B6365','C4516','M3265','R1632','S3126','T5126','Y1216'))
AND (ci.note in ('(producer)','(voice: English version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','producer','production designer','writer'))
AND (it1.id in ('37'))