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
AND (n.name_pcode_nf in ('A4216','C6214','C6416','D1362','E6252','J2126','J2456','J5264','J6531','M2414','M2432','M5214','M6252','M6262','P3616','P4232','R2623','S3126'))
AND (ci.note in ('(adprom head)','(as John Parker)','(assistant producer)','(crowd control)','(executive producer)','(field intern) (uncredited)','(main composer) (as M. L. A.)','(post production coordinator)','(producer)','(production assistant)','(script supervisor)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('composer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
