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
AND (n.name_pcode_nf in ('A3653','A46','C6241','G535','G6262','I6524','J4252','J521','K261','L25','M2435','M5253','M6213','R145','R1525','R521','S3136','S3542','S436','S5165','T5251','W3632','Y6523'))
AND (ci.note in ('(associate producer)','(co-producer)','(credit only)','(executive producer)','(on-set craft)','(post producer)','(producer)','(production assistant)','(production staff)','(script supervisor)','(stage manager)','(voice) (as Mike Donovan)','(voice: Japanese version)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
