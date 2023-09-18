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
AND (n.name_pcode_nf in ('A4253','A5362','B6525','C6424','F6526','H5621','H626','J216','J2525','L252','S3126') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','writer'))
AND (it1.id in ('31'))
