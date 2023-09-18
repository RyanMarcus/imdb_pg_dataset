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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('A51','A6453','D1652','D5426','E3426','J2514','J3123','L624','L6541','M243','M2436','N5261','R2162','S4351','S6525','T2325'))
AND (ci.note in ('(actors director)','(as Jutta Unterlercher)') OR ci.note IS NULL)
AND (rt.role in ('actress','costume designer','miscellaneous crew'))
AND (it1.id in ('26'))
