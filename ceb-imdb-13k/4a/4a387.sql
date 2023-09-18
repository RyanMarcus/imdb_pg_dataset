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
AND (n.name_pcode_nf in ('A3435','C6456','G6516','H3262','J464','K3452','K4124','L651','M6165','N2163','P363','S246','T2616','T51'))
AND (ci.note in ('(head writer)','(producer)','(puppeteer: "Salem")','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
