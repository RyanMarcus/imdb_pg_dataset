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
AND (n.name_pcode_nf in ('A2434','A3564','A5145','B51','D1314','D241','F6323','F6526','G526','J2414','J5254','J6516','K232','K6545','M3654','N2145','N2452','N5321','P4165','R2636','R513','T1632','T5326','Y526'))
AND (ci.note in ('(as Hiroshi Kawai)','(associate producer)','(choreographer)','(creator)','(location manager)','(producer)','(supervising producer)','(uncredited)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
