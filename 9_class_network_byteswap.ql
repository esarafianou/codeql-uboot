import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi, string s |
      mi.getMacroName() = s
      and s.regexpMatch("ntoh(s|l|ll)")
      and this = mi.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 