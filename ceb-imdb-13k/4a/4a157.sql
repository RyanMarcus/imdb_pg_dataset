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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5364','C6434','C6524','D5234','D526','D5452','F6521','M5236','N52','R1632','S4124','S5162','S5242','S5252'))
AND (ci.note in ('(producer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','director','producer'))
AND (it1.id in ('37'))
