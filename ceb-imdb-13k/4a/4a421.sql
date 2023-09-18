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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('A352','A6312','D1325','D5265','E4164','F5256','J5123','J5351','J5431','J6252','N2416','T3232','V5425'))
AND (ci.note in ('(acting director)','(archive footage)','(associate producer)','(executive producer)','(lead editor)','(producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
