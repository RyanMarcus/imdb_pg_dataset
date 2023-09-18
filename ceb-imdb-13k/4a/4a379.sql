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
AND (n.name_pcode_nf in ('A5345','B5253','C6525','D2315','D5141','F6525','G5432','H3','J4212','J5326','K1525','L6261','M1','R5463','S2514','S314','S5242','S5632','T6153','V6521'))
AND (ci.note in ('(credit only) (as Frances Makil-Ignacio)','(edited by)','(executive producer)','(payroll accountant) (uncredited)','(producer)','(production assistant)','(screenplay)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
