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
AND (n.name_pcode_nf in ('A3621','A4541','B123','C6434','H5625','H6513','J26','J5252','J565','M2362','M3625','R5413','S256','S2563','S3152','S42','U2145','V1565','W312','W4363'))
AND (ci.note in ('(archive footage)','(assistant to producer)','(developer)','(executive producer)','(location manager)','(producer)','(production accountant) (uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','cinematographer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('31'))
