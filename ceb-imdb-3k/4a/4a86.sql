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
AND (n.name_pcode_nf in ('A5625','B6162','C6215','C6231','D5256','J2124','J2353','J5216','K3652','P425','S5326') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(archive footage)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','cinematographer','director'))
AND (it1.id in ('37'))
