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
AND (n.name_pcode_nf in ('A4163','B5324','C3235','C4132','C5235','E3263','E3562','G315','J5243','J5423','J5656','M653','N5362','P4526','V2365'))
AND (ci.note in ('(producer: studio)','(production assistant)','(script supervisor)','(senior story editor)','(teleplay)','(uncredited)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('37'))
