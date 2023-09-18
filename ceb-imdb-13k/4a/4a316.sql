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
AND (n.name_pcode_nf in ('A5242','A5323','B53','B6252','C2413','D2134','D3245','D6252','E4312','E6243','F6341','J5262','K3462','L2512','L35','M2152','M636','P4163','R2162','R513'))
AND (ci.note in ('(additional story material)','(as Hunter)','(executive producer)','(head writer)','(producer)','(supervising producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','producer','writer'))
AND (it1.id in ('22'))
