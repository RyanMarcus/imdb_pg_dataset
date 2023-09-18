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
AND (n.name_pcode_nf in ('A3542','B6352','B6525','C4','D5216','E254','E6254','F1625','I5635','J2131','J5164','J5215','J5434','N35','O3236','O4253','P4141','P6412','S5324','S5432','S6536','U4142','Z6536'))
AND (ci.note in ('(associate producer)','(network administrator)','(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('31'))
