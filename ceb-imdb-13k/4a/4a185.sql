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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A2314','A5361','A6525','C6415','D5431','J2165','J5245','J5253','J5624','P3523','R2435','R2636','R4123','R4165','S3125','S3152','S5252','T2525','V4641'))
AND (ci.note in ('(educational advisor)','(producer)','(production assistant)','(production coordinator)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('34'))
