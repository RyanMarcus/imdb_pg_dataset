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
AND (n.name_pcode_nf in ('A4152','B1534','B4236','B6536','J5424','K253','K263','M3216','N5156','P6215','P6425','R5251','S3423','S5124','Y2352','Y2532'))
AND (ci.note in ('(associate producer) (uncredited)','(original idea)','(producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','producer','writer'))
AND (it1.id in ('34'))
