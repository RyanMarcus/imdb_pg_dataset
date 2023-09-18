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
AND (n.name_pcode_nf in ('A263','A4252','B1435','B6362','D1326','D1512','D56','E325','E5354','J1251','J2513','L25','M2413','M2453','M62','P3653','P61','R2626','S2535','T6425','V3452'))
AND (ci.note in ('(as Pedro Armendariz)','(consulting producer)','(creator)','(producer)','(script supervisor)','(supervising producer)','(uncredited)','(voice)','(voice: English version)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
