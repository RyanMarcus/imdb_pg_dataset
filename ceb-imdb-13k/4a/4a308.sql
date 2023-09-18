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
AND (n.name_pcode_nf in ('A2363','A3531','A5653','B6354','B652','C3265','C6464','D2162','D2425','D261','E1256','G6236','I1536','I5425','J215','J242','J5214','J5254','K1525','M2431','R2415','R2631','S5361','V5252','W4156'))
AND (ci.note in ('(assistant to executive producer)','(co-executive producer) (as Jim Vallely)','(co-producer)','(executive producer)','(producer)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
