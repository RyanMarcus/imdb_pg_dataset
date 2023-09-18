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
AND (n.name_pcode_nf in ('A5252','A5362','B3512','C32','C5264','D16','D63','E2141','F6525','H1216','J2321','J4165','K3645','K5363','M631','N1216','O425','P3624','P4126','R3165','R5632','S5352','S5634','V5362'))
AND (ci.note in ('(executive producer)','(producer)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','producer','writer'))
AND (it1.id in ('31'))
