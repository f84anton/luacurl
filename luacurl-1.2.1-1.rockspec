-- This file was automatically generated for the LuaDist project.

package = "LuaCURL"
version = "1.2.1-1"
-- LuaDist source
source = {
  tag = "1.2.1-1",
  url = "git://github.com/LuaDist2/luacurl.git"
}
-- Original source
-- source = {
--    url = "http://luaforge.net/frs/download.php/3342/luacurl-1.2.1.zip",
--    md5 = "4c83710a0fc5ca52818e5ec0101c4395"
-- }
description = {
   summary = "Lua module binding CURL",
   detailed = [[
      LuaCURL is Lua 5.x compatible module providing Internet browsing
      capabilities based on the CURL library. The module interface
      follows strictly the CURl architecture and is very easy to use
      if the programmer has already experience with CURL.
   ]],
   homepage = "http://luaforge.net/projects/luacurl/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   CURL = {
      header = "curl/curl.h"
   }
}
build = {
   type = "builtin",
   modules = {
     luacurl = {
       sources = { "luacurl.c" },
       libraries = { "curl" },
       incdirs = { "$(CURL_INCDIR)" },
       libdirs = { "$(CURL_LIBDIR)" }
 	 }
   }
}