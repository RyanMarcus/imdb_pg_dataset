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
AND (n.name_pcode_nf in ('A525','C6424','D1345','D5465','G6326','I2521','J1323','J2524','J5251','K4246','L3216','L624','M3254','M6251','N2436','O4165','P426','S2326','S514','V2361','V4535','Y1252'))
AND (ci.note in ('(alderman)','(associate producer)','(director of photography) (as Jafet Tutanes)','(executive producer)','(field cashier)','(producer)','(unspecified crew member)','(voice)','(wrangler)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('26'))
