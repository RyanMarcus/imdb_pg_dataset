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
AND (n.name_pcode_nf in ('A1265','A25','A5256','E6251','G1642','H1216','H2425','H4254','J42','K43','K5135','L2165','M2465','M2523','M5245','M6263','M652','R14','S25','S3152','S5456','S6565','T4635','V6162'))
AND (ci.note in ('(as Keiko Hayase)','(as Margarida Vilanova)','(as Michelle Renaud)','(floor manager)','(head writer)','(production intern)','(uncredited)','(voice)','(voice: Japanese version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','costume designer','director','miscellaneous crew','writer'))
AND (it1.id in ('37'))
