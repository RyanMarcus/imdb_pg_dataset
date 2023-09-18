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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('A1452','A2542','B2615','C6424','C6425','C6541','C6542','D564','E3561','E62','G6356','H5653','H6163','J1231','J5125','J5216','K512','M2423','P3626','P45','S5143','T5462'))
AND (ci.note in ('(supervising producer)','(uncredited)','(voice)','(writer)','(written by) (as Herb Sargent)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','producer','writer'))
AND (it1.id in ('26'))
