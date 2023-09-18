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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('A2463','B5252','D4251','D5256','E3161','I5253','J52','L6214','M424','N2543','P4242','S2145','S3562','S3634','T4165','T5623','V2363','W23','Z2146'))
AND (ci.note in ('(creator)','(executive producer: TV3)','(producer)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','producer','writer'))
AND (it1.id in ('26'))
