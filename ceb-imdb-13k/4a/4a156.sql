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
AND (n.name_pcode_nf in ('A3524','G6453','J5236','K2452','S5252','S53','T5162','T5165','T6236'))
AND (ci.note in ('(associate producer)','(co-producer)','(developer)','(executive producer)','(location manager)','(production coordinator)','(storyliner)','(technical consultant) (uncredited)','(written by)'))
AND (rt.role in ('miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
