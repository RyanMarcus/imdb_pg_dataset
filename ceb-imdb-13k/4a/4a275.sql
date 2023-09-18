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
AND (n.name_pcode_nf in ('A5254','C4142','C6416','C6423','D1325','D1343','D542','D5424','E3523','E3632','G6435','H5262','J5214','M5636','S3125','W6561','X162') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(associate producer)','(producer)','(production assistant)','(technical advisor)','(translator)','(writer) (as Danica Mae Domingo)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
