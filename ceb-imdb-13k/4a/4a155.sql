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
AND (n.name_pcode_nf in ('A5252','C5321','C6234','C6252','C6424','C6565','D5153','D5416','D6313','E4516','E6236','F6525','G6363','H6325','J5231','K6534','L3256','M2523','M4563','P4251','R2635','S4245','T523','U5231'))
AND (ci.note in ('(key crafts service) (uncredited)','(producer)','(story)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
