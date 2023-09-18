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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5254','C5436','E1451','E162','F1626','F6524','G6231','H6315','J5426','L2152','M4261','P3525','P5451','R2416','R2526','R5323','S3126','S561'))
AND (ci.note in ('(archive footage)','(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','editor','producer','writer'))
AND (it1.id in ('31'))
