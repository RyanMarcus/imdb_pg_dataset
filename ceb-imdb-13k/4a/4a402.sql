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
AND (n.name_pcode_nf in ('A5143','B3416','D1214','D5212','G1543','H3546','J3143','L6562','O3424','S5632','Y252'))
AND (ci.note in ('(co-executive producer)','(credit only)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','editor','producer'))
AND (it1.id in ('19'))
