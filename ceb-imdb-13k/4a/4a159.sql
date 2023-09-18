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
AND (n.name_pcode_nf in ('A2425','B4','C6165','D1362','D5434','E3523','F6525','J2152','J512','K5256','M242','M3514','M4325','N243','R1635','R2412','R2424','R5241','S2163','S5236','S5242','S5253','S6241','T525','T5261'))
AND (ci.note in ('(as Joe Mascolo)','(executive producer)','(production assistant)','(technical director)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
