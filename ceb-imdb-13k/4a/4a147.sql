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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('B3563','B5252','C3653','C6421','C6545','D6524','E3525','E4565','G5263','H3523','H3652','J3243','L2163','M2523','R2531','R512','S1525','S5323'))
AND (ci.note in ('(executive producer)','(talent coordinator) (as Cornelia Lee)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer'))
AND (it1.id in ('32'))
