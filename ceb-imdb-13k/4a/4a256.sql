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
AND (n.name_pcode_nf in ('A2356','A5351','B132','B6324','D526','D563','G6352','I6152','J1626','J2','J5265','J6243','K5351','L2416','M54','R1352','R2616','S562','T1423','T5342'))
AND (ci.note in ('(creator)','(executive producer)','(producer)','(production assistant)','(production cost accountant) (as Me-ann Maluya)','(senior segment producer)','(story)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
