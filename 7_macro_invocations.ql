
import cpp

from MacroInvocation mi, string s
where mi.getMacroName() = s
  and s.regexpMatch("ntoh(s|l|ll)")
select mi, "network ordering conversion macros' invocation"