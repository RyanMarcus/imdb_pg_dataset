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
AND (n.name_pcode_nf in ('A4252','A5352','B625','D1352','D6565','G6261','H5616','J242','J2453','J5162','M2453','M2523','M6254','M6326','P3625','R2452','R3162','S4153','V2365','Y253'))
AND (ci.note in ('(assistant producer)','(executive producer)','(producer)','(production accountant)','(production assistant) (as Mark Jhon Mata)','(production assistant)','(video tape)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
