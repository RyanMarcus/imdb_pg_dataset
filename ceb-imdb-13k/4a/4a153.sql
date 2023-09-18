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
AND (n.name_pcode_nf in ('A1642','A5216','A525','G6532','J5313','K1524','K5164','L53','P3625','P4265','P4564','R525','S2313','T6263'))
AND (ci.note in ('(associate head writer)','(executive producer)','(producer)','(producer: RTL)','(production accountant)','(production assistant)','(production intern)','(series producer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
