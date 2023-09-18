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
AND (n.name_pcode_nf in ('A4252','A5432','C6435','C6531','D241','D6215','F6326','G2162','G6215','J152','J312','J5426','J5632','L2515','L5142','M231','M6123','M6232','O2561','R253','S1562','S2542','T1526','T3656','T561'))
AND (ci.note in ('(associate producer)','(creator)','(executive producer)','(publicist)','(script supervisor)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
