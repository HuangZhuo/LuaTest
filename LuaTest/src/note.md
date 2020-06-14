# Tips
### lua退出交互式命令行
使用os.exit()
### 查看环境变量
在cmd中使用set命令
```
C:\Users\huang>set LUA_DEV
LUA_DEV=C:\Users\huang\scoop\apps\lua-for-windows\current
```

# Q&A
### 类似 **{workspaceFolder}** 的预定义变量
[参考](https://blog.csdn.net/a435262767/article/details/103639256)

---

# [LuaRocks](https://luarocks.org/) -Lua包管理工具
### 安装
最开始电脑里用的是通过scoop安装的Lua，不过发现LuaRocks版本太老了(很多命令不能使用，参考最新文档也不会修改配置)，且不方便单独升级，后面下载了带LuaRocks的[完整版Lua5.1](http://luarocks.github.io/luarocks/releases/)

```
============================
== LuaRocks is installed! ==
============================


You may want to add the following elements to your paths;
Lua interpreter;
  PATH     :   C:\DevTools\luarocks-3.3.1-win32\win32\lua5.1\bin
  PATHEXT  :   .LUA
LuaRocks;
  PATH     :   C:\Program Files (x86)\LuaRocks
  LUA_PATH :   C:\Program Files (x86)\LuaRocks\lua\?.lua;C:\Program Files (x86)\LuaRocks\lua\?\init.lua
Local user rocktree (Note: %APPDATA% is user dependent);
  PATH     :   %APPDATA%\LuaRocks\bin
  LUA_PATH :   %APPDATA%\LuaRocks\share\lua\5.1\?.lua;%APPDATA%\LuaRocks\share\lua\5.1\?\init.lua
  LUA_CPATH:   %APPDATA%\LuaRocks\lib\lua\5.1\?.dll
System rocktree
  PATH     :   c:\devtools\luarocks-3.3.1-win32\win32\lua5.1\\bin
  LUA_PATH :   c:\devtools\luarocks-3.3.1-win32\win32\lua5.1\\share\lua\5.1\?.lua;c:\devtools\luarocks-3.3.1-win32\win32\lua5.1\\share\lua\5.1\?\init.lua
  LUA_CPATH:   c:\devtools\luarocks-3.3.1-win32\win32\lua5.1\\lib\lua\5.1\?.dll

Note that the %APPDATA% element in the paths above is user specific and it MUST be replaced by its actual value.
For the current user that value is: C:\Users\huang\AppData\Roaming.
```
### 使用

### 在VS Code环境下使用

