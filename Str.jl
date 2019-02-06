module Str

   export fmt
   export trim

   function fmt(minum,dec::Int=3,len::Int=0)
      minum *= 10^dec
      minum = round(minum)
      minum /= 10^dec
      return "$minum"
   end

   #=function fmt(minum,format="###.###")
      minum *= 10^dec
      minum = round(minum)
      minum *= 10^dec
      return "$minum"
   end
   =#
   function trim(s)
      mis = ""
      ls = length(s)
      for i in 1:ls
         if s[i] != " " string(mis,s[i]) end
      end
      return mis
   end  

end
