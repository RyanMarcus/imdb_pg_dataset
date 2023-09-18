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
AND (n.name_pcode_nf in ('A5241','E1252','G6524','H542','L5656','M6432','N1253','R1514','R524','S456','T123','T515','V6425'))
AND (ci.note in ('(as Tia Pusit)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer','director'))
AND (it1.id in ('32'))
