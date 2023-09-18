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
AND (n.name_pcode_nf in ('A4563','A5236','B6162','C5362','C652','M326','M4362','N2532','R263','S1235','T5623'))
AND (ci.note in ('(archive footage)','(first assistant accountant) (uncredited)','(head writer script)','(idea)','(producer)','(production accountant)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
