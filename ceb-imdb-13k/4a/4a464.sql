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
AND (n.name_pcode_nf in ('A5145','A524','B6532','G6252','I2145','J2452','J5263','M25','M6216','M6261','M6353','M6354','M6563','R2453','R3245'))
AND (ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('34'))
