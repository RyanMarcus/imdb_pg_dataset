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
AND (n.name_pcode_nf in ('B4516','C625','D1323','E4563','I5124','J2145','J4165','J5162','L564','M65','R1636','R232'))
AND (ci.note in ('(account head)','(assistant location manager)','(supervising producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
