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
AND (n.name_pcode_nf in ('E2525','H5252','J5245','L242','L5151','P142','T6152','T6235'))
AND (ci.note in ('(executive producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','producer','writer'))
AND (it1.id in ('31'))
