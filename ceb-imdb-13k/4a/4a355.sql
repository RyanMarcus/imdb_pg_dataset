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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('B1452','B6164','D6341','E1343','F5451','H4526','J5262','K51','M6531','N5412','O4262','P4362','S3452'))
AND (ci.note in ('(#1)','(as Eleni Filiousi)','(set production assistant)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','editor','miscellaneous crew','writer'))
AND (it1.id in ('25'))
