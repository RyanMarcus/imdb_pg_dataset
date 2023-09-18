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
AND (n.name_pcode_nf in ('B6535','C5323','D1523','E3525','E5634','F32','G4656','H425','J2452','J5162','J5251','J5452','M5415','P4642','S3541','T3525','T5121','T5636','W4521','Y2424'))
AND (ci.note in ('(archive footage)','(as Brandy)','(as Guillermo)','(as Jackie García)','(as Johnny Williams)','(as Timothy Ryder)','(co-producer)','(producer)','(story)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','editor','producer','writer'))
AND (it1.id in ('31'))
