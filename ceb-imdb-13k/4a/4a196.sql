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
AND (n.name_pcode_nf in ('A5325','B1525','B4152','B652','C6463','D5123','E6256','F6325','H6132','I2','I5626','K3162','K4213','K531','M2523','M4212','M4523','N4165','P1425','R1634','S3151','S5616','T3415','T5241'))
AND (ci.note in ('(executive producer)','(producer)','(voice)','(voice: English version) (as Jim Taggert)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer','writer'))
AND (it1.id in ('34'))
