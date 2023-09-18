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
AND (n.name_pcode_nf in ('C4625','H4562','H4563','J242','J562','J6362','L5265','M2426','M2524','M4524','M6351','N2426','R2452','U6242'))
AND (ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','director'))
AND (it1.id in ('32'))
