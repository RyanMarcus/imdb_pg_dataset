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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A3652','D1312','H6343','J5252','M6242','R1634','S3154','S523'))
AND (ci.note in ('(assistant producer)','(developer)','(executive producer)','(overall in charge of promotion) (as Robert G. Labayen)','(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('composer','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
