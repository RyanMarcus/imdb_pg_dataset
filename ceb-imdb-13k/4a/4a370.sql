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
AND (n.name_pcode_nf in ('C6231','E5412','G2312','J2535','K454','M6416','O4165','R2162','R52','S1532','S5653','W4523'))
AND (ci.note in ('(associate director)','(executive producer) (as Kylie M. Balagtas)','(executive producer: BBC)','(first assistant accountant) (uncredited)','(production assistant)','(production coordinator)','(supervising producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
