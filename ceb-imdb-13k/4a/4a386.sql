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
AND (n.name_pcode_nf in ('C6242','C6261','J2425','K4524','L215','L232','L2435','M6263','N2463','R4125','T6262'))
AND (ci.note in ('(director of photography)','(executive producer)','(financial analyst)','(i-post account head) (as Rafael San Agustin)','(producer)','(production accountant) (as Kelly Schwartz)','(production assistant)','(production coordinator)','(writer) (as Marga Labrador)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
