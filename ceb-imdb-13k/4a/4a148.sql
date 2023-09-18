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
AND (n.name_pcode_nf in ('B42','B5252','D1353','D1623','D5421','E6251','G6212','G6215','J5232','J5263','J6251','M6265','P4324','R2416','R26','R52','S2326','S5163','T2','W345'))
AND (ci.note in ('(credit only)','(executive producer)','(line producer)','(producer)','(production executive)','(script supervisor)','(uncredited)','(voice)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
