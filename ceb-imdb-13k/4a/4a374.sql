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
AND (n.name_pcode_nf in ('A4253','B6164','C3656','D525','F6524','J5616','K452','L25','M2416','M2525','M6245','S4125','T6216','T6253'))
AND (ci.note IS NULL)
AND (rt.role in ('actress','editor'))
AND (it1.id in ('22'))
