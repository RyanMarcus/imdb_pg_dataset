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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('B42','B6232','F6523','H5624','J2423','J25','J4524','J4536','M24','M412','M6265','M6565','O6453','P3612','P362','R2316','S6452','T6252','W4525'))
AND (ci.note in ('(adaptation)','(creator)','(executive producer)','(mcr production assistant)','(producer)','(production assistant)','(production controller)','(production intern)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','costume designer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
