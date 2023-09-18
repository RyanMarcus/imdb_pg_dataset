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
AND (n.name_pcode_nf in ('B3126','C5325','C6252','C6452','C6543','D5453','G1515','G1525','G4546','G6261','H5636','J2632','J5152','M5252','N3125','R1634','R546','S3121','S4365','T3216','T5412','V4324'))
AND (ci.note in ('(as Slater)','(creator)','(executive producer)','(medical technical advisor) (uncredited)','(producer)','(production assistant)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
