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
AND (n.name_pcode_nf in ('A5232','C6451','F656','J232','J2635','J3652','K251','L6524','M6251','N6542','N6562','R6324','S3525','T1623','T5163','X1656') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','producer','writer'))
AND (it1.id in ('31'))
