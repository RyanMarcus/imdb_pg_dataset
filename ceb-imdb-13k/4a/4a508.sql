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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A2513','A4163','A5354','A6362','C623','C6235','D13','D16','E1465','G46','J2416','J2532','J5243','K3256','K5164','M26','M265','M6562','S523','S6252','T2542','T53'))
AND (ci.note in ('(actors director)','(as Samia Smith)','(assistant accountant)','(producer)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('34'))
