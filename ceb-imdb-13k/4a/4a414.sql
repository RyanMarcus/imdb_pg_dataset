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
AND (n.name_pcode_nf in ('B6534','C2623','D6523','G6524','I1542','J2352','J31','J4215','J5126','J5163','J5243','N21','P3626','S3132'))
AND (ci.note in ('(as Jon Bauman)','(associate producer)','(creator)','(delegate producer)','(production assistant)','(stage manager)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
