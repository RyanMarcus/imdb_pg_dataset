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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('E126','G523','J3546','J5256','K261','K2632','P4142','P5324','P6252','R5126','S563','T545'))
AND (ci.note in ('(location manager) (as Timothy Hillman)','(production assistant)','(senior executive)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','editor','miscellaneous crew'))
AND (it1.id in ('34'))
