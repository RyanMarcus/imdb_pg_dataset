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
AND (n.name_pcode_nf in ('A2414','B162','B4616','C245','C5231','I656','J3251','J425','L2121','L3214','M2534','M4252','M4652','R2435','R52','S1231'))
AND (ci.note in ('(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('37'))
