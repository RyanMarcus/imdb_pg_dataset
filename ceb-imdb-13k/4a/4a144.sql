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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A426','B62','C425','D5412','D6251','E2526','G6354','H424','H6156','J5214','K6235','L2426','N3141','O3165','R2145','V4321','V652') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(credit only)','(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','editor','producer'))
AND (it1.id in ('32'))
