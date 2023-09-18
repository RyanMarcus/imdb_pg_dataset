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
AND (n.name_pcode_nf in ('B6163','E4165','E6232','G4242','G6523','J5135','J516','K4153','M2563','P54','R145','S351','S3542','T3625','T625','W4251','Z2436'))
AND (ci.note in ('(assistant script coordinator) (as Penny Wylie)','(associate producer)','(deko operator)','(executive producer)','(producer)','(technical coordinator)','(uncredited)','(voice: Japanese version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
