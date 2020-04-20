import cpp

from Macro m, string s
where m.getName() = s
 and s.regexpMatch("ntoh(s|l|ll)")
select m, "network ordering conversion macros"

