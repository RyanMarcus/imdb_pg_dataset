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
AND (n.name_pcode_nf in ('A4215','A5241','A6365','B5252','B6252','G1616','H5621','H6163','I5616','J2352','J5425','M6142','O1626','O2432','P2565','P4241','R2652','R3265','S5253','T2514','T6264','V2523','W4524'))
AND (ci.note in ('(associate producer)','(executive producer)','(producer)','(promo producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','miscellaneous crew','producer'))
AND (it1.id in ('25'))
