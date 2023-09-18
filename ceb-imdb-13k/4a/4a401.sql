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
AND (n.name_pcode_nf in ('A5253','A5312','A5352','B23','B2453','B4245','B5252','C3252','C4326','D4254','E3526','H4651','J523','L2324','L2362','L2645','M261','M3232','P2136','P2316','R2426','R256','S2536','S4121','V6521'))
AND (ci.note in ('(as Rebecca Cartwright)','(assistant script editor)','(creator)','(director of photography)','(executive producer)','(production assistant)','(script supervisor)','(uncredited)','(voice)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
