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
AND (n.name_pcode_nf in ('A4263','C6165','C6215','D5246','D54','E2315','J25','J3216','J4252','J51','J53','J61','K3652','L2416','M342','M4543','P4162','S2352','S312','T565','W4314','W4545','W6561'))
AND (ci.note in ('(associate producer)','(co-executive producer)','(director of photography) (as John C. Newby)','(executive assistant: Mr. Scott)','(payroll accountant)','(production assistant)','(production coordinator)','(script coordinator)','(segment associate producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','costume designer','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('32'))
