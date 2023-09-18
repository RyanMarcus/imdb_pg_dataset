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
AND (n.name_pcode_nf in ('A4123','A4162','B6152','E4363','F6526','I6541','J2352','J25','J5352','J5632','M2423','M2523','M4635','N1352','P6212','P6262','S5252','T2426','T512','T5141','V5216','Z6563'))
AND (ci.note in ('(format by)','(producer)','(uncredited)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','producer','writer'))
AND (it1.id in ('19'))
