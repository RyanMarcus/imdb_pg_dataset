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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('C4134','G6251','K213','L5341','M3451','P4614','R215','T4121','V2145','W4365','Z6525'))
AND (ci.note in ('(adprom account head)','(as Monika Sakaguchi)','(history consultant) (as Dr. Vic Villan)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','editor','miscellaneous crew','writer'))
AND (it1.id in ('31'))
