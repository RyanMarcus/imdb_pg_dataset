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
AND (n.name_pcode_nf in ('A6526','D6412','E4516','I6152','J3163','M3253','P6256','R3264','R5141','R5245','S2524','T25') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(adprom coordinator)','(executive producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','costume designer','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('37'))
