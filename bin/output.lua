-- Generated by Haxe 3.4.0
local _hx_array_mt = {
  __newindex = function(t,k,v)
    local len = t.length
    t.length =  k >= len and (k + 1) or len
    rawset(t,k,v)
  end
}

local function _hx_tab_array(tab,length)
  tab.length = length
  return setmetatable(tab, _hx_array_mt)
end

local function _hx_anon_newindex(t,k,v) t.__fields__[k] = true; rawset(t,k,v); end
local _hx_anon_mt = {__newindex=_hx_anon_newindex}
local function _hx_a(...)
  local __fields__ = {};
  local ret = {__fields__ = __fields__};
  local max = select('#',...);
  local tab = {...};
  local cur = 1;
  while cur < max do
    local v = tab[cur];
    __fields__[v] = true;
    ret[v] = tab[cur+1];
    cur = cur + 2
  end
  return setmetatable(ret, _hx_anon_mt)
end

local function _hx_e()
  return setmetatable({__fields__ = {}}, _hx_anon_mt)
end

local function _hx_o(obj)
  return setmetatable(obj, _hx_anon_mt)
end

local function _hx_new(prototype)
  return setmetatable({__fields__ = {}}, {__newindex=_hx_anon_newindex, __index=prototype})
end

local _hxClasses = {}
Int = (function() _hxClasses.Int = _hx_o({__fields__={__name__=true},__name__={"Int"}}); return _hxClasses.Int end)();
Dynamic = (function() 
_hxClasses.Dynamic = _hx_o({__fields__={__name__=true},__name__={"Dynamic"}}); return _hxClasses.Dynamic end)();
Float = (function() 
_hxClasses.Float = _hx_e(); return _hxClasses.Float end)();
Float.__name__ = {"Float"}
Bool = (function() 
_hxClasses.Bool = _hx_e(); return _hxClasses.Bool end)();
Bool.__ename__ = {"Bool"}
Class = (function() 
_hxClasses.Class = _hx_o({__fields__={__name__=true},__name__={"Class"}}); return _hxClasses.Class end)();
Enum = _hx_e();

local Array = _hx_e()
local CompileTime = _hx_e()
local CompileTimeClassList = _hx_e()
local List = _hx_e()
local _List = {}
_List.ListNode = _hx_e()
_List.ListIterator = _hx_e()
local frontend = {}
frontend.impl = {}
frontend.impl.IUserInterface = _hx_e()
frontend.CommandLineUserInterface = _hx_e()
local Main = _hx_e()
local Math = _hx_e()
local Reflect = _hx_e()
local String = _hx_e()
local Std = _hx_e()
local Sys = _hx_e()
local Type = _hx_e()
local haxe = {}
haxe.IMap = _hx_e()
haxe.Log = _hx_e()
haxe.ds = {}
haxe.ds.StringMap = _hx_e()
haxe.io = {}
haxe.io.Bytes = _hx_e()
haxe.io.BytesBuffer = _hx_e()
haxe.io.Input = _hx_e()
haxe.io.Eof = _hx_e()
haxe.io.Error = _hx_e()
local lua = {}
lua.Boot = _hx_e()
haxe.rtti = {}
haxe.rtti.Meta = _hx_e()
lua.UserData = _hx_e()
lua.Thread = _hx_e()
local obfuscator = {}
obfuscator.Obfuscator = _hx_e()
local routines = {}
routines.virtual = {}
routines.virtual.AbstractRoutine = _hx_e()
routines.impl = {}
routines.impl.IEnabled = _hx_e()
routines.impl.IRoutine = _hx_e()
routines.conc = {}
routines.conc.CapitalizedLetter = _hx_e()
routines.conc.Colored = _hx_e()
routines.conc.Emboldened = _hx_e()
routines.conc.Italicized = _hx_e()
routines.conc.Refaced = _hx_e()
routines.conc.Resized = _hx_e()
routines.conc.Strikedthrough = _hx_e()
routines.conc.Transliterated = _hx_e()
routines.conc.Underlined = _hx_e()
local sys = {}
sys.io = {}
sys.io.FileInput = _hx_e()

local _hx_bind, _hx_bit, _hx_staticToInstance, _hx_funcToField, _hx_maxn, _hx_print, _hx_apply_self, _hx_box_mr, _hx_bit_clamp, _hx_table, _hx_bit_raw

Array.new = function() 
  local self = _hx_new(Array.prototype)
  Array.super(self)
  return self
end
Array.super = function(self) 
  _hx_tab_array(self,0);
end
_hxClasses["Array"] = Array
Array.__name__ = true
Array.prototype = _hx_a(
  'join', function(self,sep) 
    local tbl = ({});
    local i = self:iterator();
    while (i:hasNext()) do 
      local i1 = i:next();
      _G.table.insert(tbl,Std.string(i1));
      end;
    do return _G.table.concat(tbl,sep) end
  end,
  'push', function(self,x) 
    _G.rawset(self,self.length,x);
    _G.rawset(self,"length",self.length + 1);
    do return _G.rawget(self,"length") end
  end,
  'iterator', function(self) 
    local _gthis = self;
    local cur_length = 0;
    do return _hx_o({__fields__={hasNext=true,next=true},hasNext=function() 
      do return cur_length < _gthis.length end;
    end,next=function() 
      cur_length = cur_length + 1;
      do return _gthis[cur_length - 1] end;
    end}) end
  end
  ,'__class__',  Array
)

CompileTime.new = {}
_hxClasses["CompileTime"] = CompileTime
CompileTime.__name__ = true

CompileTimeClassList.new = {}
_hxClasses["CompileTimeClassList"] = CompileTimeClassList
CompileTimeClassList.__name__ = true
CompileTimeClassList.get = function(id) 
  if (CompileTimeClassList.lists == nil) then 
    CompileTimeClassList.initialise();
  end;
  do return CompileTimeClassList.lists:get(id) end;
end
CompileTimeClassList.getTyped = function(id,type) 
  do return CompileTimeClassList.get(id) end;
end
CompileTimeClassList.initialise = function() 
  CompileTimeClassList.lists = haxe.ds.StringMap.new();
  local m = haxe.rtti.Meta.getType(CompileTimeClassList);
  if (m.classLists ~= nil) then 
    local _g = 0;
    local _g1 = m.classLists;
    while (_g < _g1.length) do 
      local item = _g1[_g];
      _g = _g + 1;
      local array = item;
      local listID = array[0];
      local list = List.new();
      local _g2 = 0;
      local _g3 = array[1]:split(",");
      while (_g2 < _g3.length) do 
        local typeName = _g3[_g2];
        _g2 = _g2 + 1;
        local type = Type.resolveClass(typeName);
        if (type ~= nil) then 
          list:push(type);
        end;
        end;
      CompileTimeClassList.lists:set(listID,list);
      end;
  end;
end

List.new = function() 
  local self = _hx_new(List.prototype)
  List.super(self)
  return self
end
List.super = function(self) 
  self.length = 0;
end
_hxClasses["List"] = List
List.__name__ = true
List.prototype = _hx_a(
  'push', function(self,item) 
    local x = _List.ListNode.new(item,self.h);
    self.h = x;
    if (self.q == nil) then 
      self.q = x;
    end;
    self.length = self.length + 1;
  end,
  'iterator', function(self) 
    do return _List.ListIterator.new(self.h) end
  end
  ,'__class__',  List
)

_List.ListNode.new = function(item,next) 
  local self = _hx_new(_List.ListNode.prototype)
  _List.ListNode.super(self,item,next)
  return self
end
_List.ListNode.super = function(self,item,next) 
  self.item = item;
  self.next = next;
end
_hxClasses["_List.ListNode"] = _List.ListNode
_List.ListNode.__name__ = true
_List.ListNode.prototype = _hx_a(
  
  '__class__',  _List.ListNode
)

_List.ListIterator.new = function(head) 
  local self = _hx_new(_List.ListIterator.prototype)
  _List.ListIterator.super(self,head)
  return self
end
_List.ListIterator.super = function(self,head) 
  self.head = head;
end
_hxClasses["_List.ListIterator"] = _List.ListIterator
_List.ListIterator.__name__ = true
_List.ListIterator.prototype = _hx_a(
  'hasNext', function(self) 
    do return self.head ~= nil end
  end,
  'next', function(self) 
    local val = self.head.item;
    self.head = self.head.next;
    do return val end
  end
  ,'__class__',  _List.ListIterator
)

frontend.impl.IUserInterface.new = {}
_hxClasses["frontend.impl.IUserInterface"] = frontend.impl.IUserInterface
frontend.impl.IUserInterface.__name__ = true
frontend.impl.IUserInterface.prototype = _hx_a(
  
  '__class__',  frontend.impl.IUserInterface
)

frontend.CommandLineUserInterface.new = function() 
  local self = _hx_new(frontend.CommandLineUserInterface.prototype)
  frontend.CommandLineUserInterface.super(self)
  return self
end
frontend.CommandLineUserInterface.super = function(self) 
end
_hxClasses["frontend.CommandLineUserInterface"] = frontend.CommandLineUserInterface
frontend.CommandLineUserInterface.__name__ = true
frontend.CommandLineUserInterface.__interfaces__ = {frontend.impl.IUserInterface}
frontend.CommandLineUserInterface.prototype = _hx_a(
  'readUserInput', function(self) 
    do return Sys.stdin():readLine() end
  end
  ,'__class__',  frontend.CommandLineUserInterface
)

Main.new = {}
_hxClasses["Main"] = Main
Main.__name__ = true
Main.main = function() 
  local output = "";
  local obfuscationEngine = obfuscator.Obfuscator.new();
  local _g1 = 0;
  local _g = Main.input.length;
  while (_g1 < _g) do 
    _g1 = _g1 + 1;
    local i = _g1 - 1;
    output = output .. obfuscationEngine:obfuscate(Main.input:charAt(i));
    end;
  haxe.Log.trace(output,_hx_o({__fields__={fileName=true,lineNumber=true,className=true,methodName=true},fileName="Main.hx",lineNumber=20,className="Main",methodName="main"}));
end

Math.new = {}
_hxClasses["Math"] = Math
Math.__name__ = true
Math.get_NEGATIVE_INFINITY = function() 
  do return -_G.math.huge end;
end
Math.get_POSITIVE_INFINITY = function() 
  do return _G.math.huge end;
end
Math.get_NaN = function() 
  do return (0/0) end;
end
Math.isNaN = function(f) 
  do return f ~= f end;
end
Math.floor = function(v) 
  do return _G.math.floor(v) end;
end
Math.random = function() 
  do return _G.math.random() end;
end
Math.min = function(a,b) 
  if (Math.isNaN(a) or Math.isNaN(b)) then 
    do return Math.get_NaN() end;
  else
    do return _G.math.min(a,b) end;
  end;
end

Reflect.new = {}
_hxClasses["Reflect"] = Reflect
Reflect.__name__ = true
Reflect.hasField = function(o,field) 
  if (o.__fields__ ~= nil) then 
    do return o.__fields__[field] ~= nil end;
  else
    do return o[field] ~= nil end;
  end;
end

String.new = {}
_hxClasses["String"] = String
String.__name__ = true
String.__index = function(s,k) 
  if (k == "length") then 
    do return _G.string.len(s) end;
  else
    if (Reflect.hasField(String.prototype,k)) then 
      do return String.prototype[k] end;
    else
      if (String.__oldindex ~= nil) then 
        do return String.__oldindex[k] end;
      else
        do return nil end;
      end;
    end;
  end;
end
String.fromCharCode = function(code) 
  do return _G.string.char(code) end;
end
String.prototype = _hx_a(
  'toUpperCase', function(self) 
    do return _G.string.upper(self) end
  end,
  'split', function(self,delimiter) 
    local idx = 1;
    local ret = _hx_tab_array({ }, 0);
    local delim_offset = (function() 
      local _hx_1
      if (delimiter.length > 0) then 
      _hx_1 = delimiter.length; else 
      _hx_1 = 1; end
      return _hx_1
    end )();
    while (idx ~= nil) do 
      local newidx = 0;
      if (delimiter.length > 0) then 
        newidx = _G.string.find(self,delimiter,idx,true);
      else
        if (idx >= self.length) then 
          newidx = nil;
        else
          newidx = idx + 1;
        end;
      end;
      if (newidx ~= nil) then 
        local match = _G.string.sub(self,idx,newidx - 1);
        ret:push(match);
        idx = newidx + delimiter.length;
      else
        ret:push(_G.string.sub(self,idx,_G.string.len(self)));
        idx = nil;
      end;
      end;
    do return ret end
  end,
  'toString', function(self) 
    do return self end
  end,
  'charAt', function(self,index) 
    do return _G.string.sub(self,index + 1,index + 1) end
  end,
  'charCodeAt', function(self,index) 
    do return _G.string.byte(self,index + 1) end
  end,
  'substr', function(self,pos,len) 
    if ((len == nil) or (len > (pos + self.length))) then 
      len = self.length;
    else
      if (len < 0) then 
        len = self.length + len;
      end;
    end;
    if (pos < 0) then 
      pos = self.length + pos;
    end;
    if (pos < 0) then 
      pos = 0;
    end;
    do return _G.string.sub(self,pos + 1,pos + len) end
  end
  ,'__class__',  String
)

Std.new = {}
_hxClasses["Std"] = Std
Std.__name__ = true
Std.is = function(v,t) 
  do return lua.Boot.__instanceof(v,t) end;
end
Std.string = function(s) 
  do return lua.Boot.__string_rec(s) end;
end
Std.random = function(x) 
  if (x <= 0) then 
    do return 0 end;
  else
    do return Math.floor(Math.random() * x) end;
  end;
end

Sys.new = {}
_hxClasses["Sys"] = Sys
Sys.__name__ = true
Sys.stdin = function() 
  do return sys.io.FileInput.new(_G.io.stdin) end;
end

Type.new = {}
_hxClasses["Type"] = Type
Type.__name__ = true
Type.resolveClass = function(name) 
  local cl = _hxClasses[name];
  if ((cl == nil) or not lua.Boot.isClass(cl)) then 
    do return nil end;
  end;
  do return cl end;
end
Type.createInstance = function(cl,args) 
  do return cl.new(_hx_table.unpack(args,0)) end;
end

haxe.IMap.new = {}
_hxClasses["haxe.IMap"] = haxe.IMap
haxe.IMap.__name__ = true

haxe.Log.new = {}
_hxClasses["haxe.Log"] = haxe.Log
haxe.Log.__name__ = true
haxe.Log.trace = function(v,infos) 
  local str = nil;
  if (infos ~= nil) then 
    str = infos.fileName .. ":" .. infos.lineNumber .. ": " .. Std.string(v);
    if (infos.customParams ~= nil) then 
      str = str .. ("," .. infos.customParams:join(","));
    end;
  else
    str = v;
  end;
  if (str == nil) then 
    str = "null";
  end;
  _hx_print(str);
end

haxe.ds.StringMap.new = function() 
  local self = _hx_new(haxe.ds.StringMap.prototype)
  haxe.ds.StringMap.super(self)
  return self
end
haxe.ds.StringMap.super = function(self) 
  self.v = {}
  self.k = {}
end
_hxClasses["haxe.ds.StringMap"] = haxe.ds.StringMap
haxe.ds.StringMap.__name__ = true
haxe.ds.StringMap.__interfaces__ = {haxe.IMap}
haxe.ds.StringMap.prototype = _hx_a(
  'set', function(self,key,value) 
    self.v[key] = value;
    self.k[key] = true;
  end,
  'get', function(self,key) 
    do return self.v[key] end
  end
  ,'__class__',  haxe.ds.StringMap
)

haxe.io.Bytes.new = function(length,b) 
  local self = _hx_new(haxe.io.Bytes.prototype)
  haxe.io.Bytes.super(self,length,b)
  return self
end
haxe.io.Bytes.super = function(self,length,b) 
  self.length = length;
  self.b = b;
end
_hxClasses["haxe.io.Bytes"] = haxe.io.Bytes
haxe.io.Bytes.__name__ = true
haxe.io.Bytes.prototype = _hx_a(
  'getString', function(self,pos,len) 
    if (((pos < 0) or (len < 0)) or ((pos + len) > self.length)) then 
      _G.error(haxe.io.Error.OutsideBounds,0);
    end;
    local begin = lua.Boot.__cast(Math.min(pos,self.b.length) , Int);
    local _end = lua.Boot.__cast(Math.min(pos + len,self.b.length) , Int);
    local _g = _hx_tab_array({ }, 0);
    local _g2 = begin;
    local _g1 = _end;
    while (_g2 < _g1) do 
      _g2 = _g2 + 1;
      local i = _g2 - 1;
      _g:push(String.fromCharCode(self.b[i]));
      end;
    do return _g:join("") end
  end,
  'toString', function(self) 
    do return self:getString(0,self.length) end
  end
  ,'__class__',  haxe.io.Bytes
)

haxe.io.BytesBuffer.new = function() 
  local self = _hx_new(haxe.io.BytesBuffer.prototype)
  haxe.io.BytesBuffer.super(self)
  return self
end
haxe.io.BytesBuffer.super = function(self) 
  self.b = Array.new();
end
_hxClasses["haxe.io.BytesBuffer"] = haxe.io.BytesBuffer
haxe.io.BytesBuffer.__name__ = true
haxe.io.BytesBuffer.prototype = _hx_a(
  'addByte', function(self,byte) 
    self.b:push(byte);
  end,
  'getBytes', function(self) 
    local bytes = haxe.io.Bytes.new(self.b.length,self.b);
    self.b = nil;
    do return bytes end
  end
  ,'__class__',  haxe.io.BytesBuffer
)

haxe.io.Input.new = {}
_hxClasses["haxe.io.Input"] = haxe.io.Input
haxe.io.Input.__name__ = true
haxe.io.Input.prototype = _hx_a(
  'readByte', function(self) 
    _G.error("Not implemented",0);
  end,
  'set_bigEndian', function(self,b) 
    self.bigEndian = b;
    do return b end
  end,
  'readLine', function(self) 
    local buf = haxe.io.BytesBuffer.new();
    local last;
    local s;
    local _hx_expected_result = {}
    local _hx_status, _hx_result = pcall(function() 
    
        while (true) do 
          last = self:readByte();
          if (not (last ~= 10)) then 
            break;
          end;
          buf:addByte(last);
          end;
        s = buf:getBytes():toString();
        if (s:charCodeAt(s.length - 1) == 13) then 
          s = s:substr(0,-1);
        end;
       return _hx_expected_result end)
     if not _hx_status then 
      local _hx_1 = _hx_result
      if( lua.Boot.__instanceof(_hx_1,haxe.io.Eof) ) then 
        local e = _hx_1
        s = buf:getBytes():toString();
        if (s.length == 0) then 
          _G.error(e,0);
        end;
      else _G.error(_hx_1)
      end
     elseif _hx_result ~= _hx_expected_result then return _hx_result end;
    do return s end
  end
  ,'__class__',  haxe.io.Input
)

haxe.io.Eof.new = function() 
  local self = _hx_new(haxe.io.Eof.prototype)
  haxe.io.Eof.super(self)
  return self
end
haxe.io.Eof.super = function(self) 
end
_hxClasses["haxe.io.Eof"] = haxe.io.Eof
haxe.io.Eof.__name__ = true
haxe.io.Eof.prototype = _hx_a(
  'toString', function(self) 
    do return "Eof" end
  end
  ,'__class__',  haxe.io.Eof
)
_hxClasses["haxe.io.Error"] = { __ename__ = true, __constructs__ = _hx_tab_array({[0]="Blocked","Overflow","OutsideBounds","Custom"},4)}
haxe.io.Error = _hxClasses["haxe.io.Error"];
haxe.io.Error.Blocked = _hx_tab_array({[0]="Blocked",0,__enum__ = haxe.io.Error},2)

haxe.io.Error.Overflow = _hx_tab_array({[0]="Overflow",1,__enum__ = haxe.io.Error},2)

haxe.io.Error.OutsideBounds = _hx_tab_array({[0]="OutsideBounds",2,__enum__ = haxe.io.Error},2)

haxe.io.Error.Custom = function(e) local _x = _hx_tab_array({[0]="Custom",3,e,__enum__=haxe.io.Error}, 3); return _x; end 

lua.Boot.new = {}
_hxClasses["lua.Boot"] = lua.Boot
lua.Boot.__name__ = true
lua.Boot.isClass = function(o) 
  if (_G.type(o) ~= "table") then 
    do return false end;
  else
    do return o.__name__ end;
  end;
end
lua.Boot.getClass = function(o) 
  if (Std.is(o,Array)) then 
    do return Array end;
  else
    local cl = o.__class__;
    if (cl ~= nil) then 
      do return cl end;
    else
      do return nil end;
    end;
  end;
end
lua.Boot.__instanceof = function(o,cl) 
  if (cl == nil) then 
    do return false end;
  end;
  local cl1 = cl;
  if (cl1) == Array then 
    do return lua.Boot.isArray(o) end;
  elseif (cl1) == Bool then 
    do return _G.type(o) == "boolean" end;
  elseif (cl1) == Dynamic then 
    do return true end;
  elseif (cl1) == Float then 
    do return _G.type(o) == "number" end;
  elseif (cl1) == Int then 
    if (_G.type(o) == "number") then 
      do return lua.Boot.clamp(o) == o end;
    else
      do return false end;
    end;
  elseif (cl1) == String then 
    do return _G.type(o) == "string" end;
  elseif (cl1) == _G.table then 
    do return _G.type(o) == "table" end;
  elseif (cl1) == lua.Thread then 
    do return _G.type(o) == "thread" end;
  elseif (cl1) == lua.UserData then 
    do return _G.type(o) == "userdata" end;else
  if (((o ~= nil) and (_G.type(o) == "table")) and (_G.type(cl) == "table")) then 
    if (lua.Boot.extendsOrImplements(lua.Boot.getClass(o),cl)) then 
      do return true end;
    end;
    if ((function() 
      local _hx_1
      if (cl == Class) then 
      _hx_1 = o.__name__ ~= nil; else 
      _hx_1 = false; end
      return _hx_1
    end )()) then 
      do return true end;
    end;
    if ((function() 
      local _hx_2
      if (cl == Enum) then 
      _hx_2 = o.__ename__ ~= nil; else 
      _hx_2 = false; end
      return _hx_2
    end )()) then 
      do return true end;
    end;
    do return o.__enum__ == cl end;
  else
    do return false end;
  end; end;
end
lua.Boot.isArray = function(o) 
  if (_G.type(o) == "table") then 
    if ((o.__enum__ == nil) and (_G.getmetatable(o) ~= nil)) then 
      do return _G.getmetatable(o).__index == Array.prototype end;
    else
      do return false end;
    end;
  else
    do return false end;
  end;
end
lua.Boot.__cast = function(o,t) 
  if (lua.Boot.__instanceof(o,t)) then 
    do return o end;
  else
    _G.error("Cannot cast " .. Std.string(o) .. " to " .. Std.string(t),0);
  end;
end
lua.Boot.printEnum = function(o,s) 
  if (o.length == 2) then 
    do return o[0] end;
  else
    local str = Std.string(o[0]) .. "(";
    s = s .. "\t";
    local _g1 = 2;
    local _g = o.length;
    while (_g1 < _g) do 
      _g1 = _g1 + 1;
      local i = _g1 - 1;
      if (i ~= 2) then 
        str = str .. ("," .. lua.Boot.__string_rec(o[i],s));
      else
        str = str .. lua.Boot.__string_rec(o[i],s);
      end;
      end;
    do return str .. ")" end;
  end;
end
lua.Boot.printClass = function(c,s) 
  do return "{" .. lua.Boot.printClassRec(c,"",s) .. "}" end;
end
lua.Boot.printClassRec = function(c,result,s) 
  if (result == nil) then 
    result = "";
  end;
  local f = lua.Boot.__string_rec;
  for k,v in pairs(c) do if result ~= '' then result = result .. ', ' end result = result .. k .. ':' .. f(v, s.. '	') end;
  do return result end;
end
lua.Boot.__string_rec = function(o,s) 
  if (s == nil) then 
    s = "";
  end;
  local _g = type(o);
  local _g1 = _g;
  if (_g1) == "boolean" then 
    do return tostring(o) end;
  elseif (_g1) == "function" then 
    do return "<function>" end;
  elseif (_g1) == "nil" then 
    do return "null" end;
  elseif (_g1) == "number" then 
    if (o == Math.get_POSITIVE_INFINITY()) then 
      do return "Infinity" end;
    else
      if (o == Math.get_NEGATIVE_INFINITY()) then 
        do return "-Infinity" end;
      else
        if (o ~= o) then 
          do return "NaN" end;
        else
          do return tostring(o) end;
        end;
      end;
    end;
  elseif (_g1) == "string" then 
    do return o end;
  elseif (_g1) == "table" then 
    if (o.__enum__ ~= nil) then 
      do return lua.Boot.printEnum(o,s) end;
    else
      if ((o.toString ~= nil) and not lua.Boot.isArray(o)) then 
        do return o:toString() end;
      else
        if (lua.Boot.isArray(o)) then 
          local o2 = o;
          if (s.length > 5) then 
            do return "[...]" end;
          else
            local _g2 = _hx_tab_array({ }, 0);
            local _g11 = 0;
            while (_g11 < o2.length) do 
              local i = o2[_g11];
              _g11 = _g11 + 1;
              _g2:push(lua.Boot.__string_rec(i,s .. 1));
              end;
            do return "[" .. _g2:join(",") .. "]" end;
          end;
        else
          if (o.__class__ ~= nil) then 
            do return lua.Boot.printClass(o,s .. "\t") end;
          else
            local fields = lua.Boot.fieldIterator(o);
            local buffer = ({});
            local first = true;
            _G.table.insert(buffer,"{ ");
            local f = fields;
            while (f:hasNext()) do 
              local f1 = f:next();
              if (first) then 
                first = false;
              else
                _G.table.insert(buffer,", ");
              end;
              _G.table.insert(buffer,"" .. Std.string(f1) .. " : " .. Std.string(o[f1]));
              end;
            _G.table.insert(buffer," }");
            do return _G.table.concat(buffer,"") end;
          end;
        end;
      end;
    end;
  elseif (_g1) == "thread" then 
    do return "<thread>" end;
  elseif (_g1) == "userdata" then 
    do return "<userdata>" end;else
  _G.error("Unknown Lua type",0); end;
end
lua.Boot.clamp = function(x) 
  do return _hx_bit_clamp(x) end;
end
lua.Boot.extendsOrImplements = function(cl1,cl2) 
  if ((cl1 == nil) or (cl2 == nil)) then 
    do return false end;
  else
    if (cl1 == cl2) then 
      do return true end;
    else
      if (cl1.__interfaces__ ~= nil) then 
        local intf = cl1.__interfaces__;
        local _g1 = 1;
        local _g = _hx_table.maxn(intf) + 1;
        while (_g1 < _g) do 
          _g1 = _g1 + 1;
          local i = _g1 - 1;
          if (lua.Boot.extendsOrImplements(intf[i],cl2)) then 
            do return true end;
          end;
          end;
      end;
    end;
  end;
  do return lua.Boot.extendsOrImplements(cl1.__super__,cl2) end;
end
lua.Boot.fieldIterator = function(o) 
  local tbl = (function() 
    local _hx_1
    if (o.__fields__ ~= nil) then 
    _hx_1 = o.__fields__; else 
    _hx_1 = o; end
    return _hx_1
  end )();
  local cur = _G.pairs(tbl);
  local next_valid = function(tbl1,val) 
    while (lua.Boot.hiddenFields[val] ~= nil) do 
      val = cur(tbl1,val);
      end;
    do return val end;
  end;
  local cur_val = next_valid(tbl,cur(tbl,nil));
  do return _hx_o({__fields__={next=true,hasNext=true},next=function() 
    local ret = cur_val;
    cur_val = next_valid(tbl,cur(tbl,cur_val));
    do return ret end;
  end,hasNext=function() 
    do return cur_val ~= nil end;
  end}) end;
end

haxe.rtti.Meta.new = {}
_hxClasses["haxe.rtti.Meta"] = haxe.rtti.Meta
haxe.rtti.Meta.__name__ = true
haxe.rtti.Meta.getType = function(t) 
  local meta = haxe.rtti.Meta.getMeta(t);
  if ((meta == nil) or (meta.obj == nil)) then 
    do return _hx_e() end;
  else
    do return meta.obj end;
  end;
end
haxe.rtti.Meta.getMeta = function(t) 
  do return t.__meta__ end;
end

lua.UserData.new = {}
_hxClasses["lua.UserData"] = lua.UserData
lua.UserData.__name__ = true

lua.Thread.new = {}
_hxClasses["lua.Thread"] = lua.Thread
lua.Thread.__name__ = true

obfuscator.Obfuscator.new = function(minimumLoops,maximumLoops) 
  local self = _hx_new(obfuscator.Obfuscator.prototype)
  obfuscator.Obfuscator.super(self,minimumLoops,maximumLoops)
  return self
end
obfuscator.Obfuscator.super = function(self,minimumLoops,maximumLoops) 
  if (maximumLoops == nil) then 
    maximumLoops = 3;
  end;
  if (minimumLoops == nil) then 
    minimumLoops = 0;
  end;
  self.routineArray = Array.new();
  self.minimumLoops = minimumLoops;
  self.maximumLoops = maximumLoops;
  local i = obfuscator.Obfuscator.routineList:iterator();
  while (i:hasNext()) do 
    local i1 = i:next();
    self.routineArray:push(Type.createInstance(i1,_hx_tab_array({ }, 0)));
    end;
end
_hxClasses["obfuscator.Obfuscator"] = obfuscator.Obfuscator
obfuscator.Obfuscator.__name__ = true
obfuscator.Obfuscator.prototype = _hx_a(
  'obfuscate', function(self,message) 
    local output = message;
    local _g1 = self.minimumLoops;
    local _g = Std.random(self.maximumLoops + 1);
    while (_g1 < _g) do 
      _g1 = _g1 + 1;
      local i = _g1 - 1;
      output = self.routineArray[Std.random(self.routineArray.length)]:obfuscate(output);
      end;
    do return output end
  end
  ,'__class__',  obfuscator.Obfuscator
)

routines.virtual.AbstractRoutine.new = function() 
  local self = _hx_new(routines.virtual.AbstractRoutine.prototype)
  routines.virtual.AbstractRoutine.super(self)
  return self
end
routines.virtual.AbstractRoutine.super = function(self) 
  self.isOpen = false;
end
_hxClasses["routines.virtual.AbstractRoutine"] = routines.virtual.AbstractRoutine
routines.virtual.AbstractRoutine.__name__ = true
routines.virtual.AbstractRoutine.prototype = _hx_a(
  'open', function(self,message) 
    _G.error("Attempt to access method of abstract class.",0);
  end,
  'close', function(self,message) 
    _G.error("Attempt to access method of abstract class.",0);
  end,
  'obfuscate', function(self,message) 
    if (self.isOpen) then 
      do return self:open(message) end;
    else
      do return self:close(message) end;
    end;
  end
  ,'__class__',  routines.virtual.AbstractRoutine
)

routines.impl.IEnabled.new = {}
_hxClasses["routines.impl.IEnabled"] = routines.impl.IEnabled
routines.impl.IEnabled.__name__ = true

routines.impl.IRoutine.new = function() 
  local self = _hx_new(routines.impl.IRoutine.prototype)
  routines.impl.IRoutine.super(self)
  return self
end
routines.impl.IRoutine.super = function(self) 
  self.isOpen = false;
end
_hxClasses["routines.impl.IRoutine"] = routines.impl.IRoutine
routines.impl.IRoutine.__name__ = true
routines.impl.IRoutine.prototype = _hx_a(
  
  '__class__',  routines.impl.IRoutine
)

routines.conc.CapitalizedLetter.new = function() 
  local self = _hx_new(routines.conc.CapitalizedLetter.prototype)
  routines.conc.CapitalizedLetter.super(self)
  return self
end
routines.conc.CapitalizedLetter.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.CapitalizedLetter"] = routines.conc.CapitalizedLetter
routines.conc.CapitalizedLetter.__name__ = true
routines.conc.CapitalizedLetter.__interfaces__ = {routines.impl.IEnabled,routines.impl.IRoutine}
routines.conc.CapitalizedLetter.prototype = _hx_a(
  'open', function(self,message) 
    do return message:toUpperCase() end
  end,
  'close', function(self,message) 
    do return message:toUpperCase() end
  end
  ,'__class__',  routines.conc.CapitalizedLetter
)
routines.conc.CapitalizedLetter.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.CapitalizedLetter.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Colored.new = function() 
  local self = _hx_new(routines.conc.Colored.prototype)
  routines.conc.Colored.super(self)
  return self
end
routines.conc.Colored.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Colored"] = routines.conc.Colored
routines.conc.Colored.__name__ = true
routines.conc.Colored.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Colored.prototype = _hx_a(
  'open', function(self,message) 
    do return message:toUpperCase() end
  end,
  'close', function(self,message) 
    do return message:toUpperCase() end
  end
  ,'__class__',  routines.conc.Colored
)
routines.conc.Colored.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Colored.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Emboldened.new = function() 
  local self = _hx_new(routines.conc.Emboldened.prototype)
  routines.conc.Emboldened.super(self)
  return self
end
routines.conc.Emboldened.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Emboldened"] = routines.conc.Emboldened
routines.conc.Emboldened.__name__ = true
routines.conc.Emboldened.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Emboldened.prototype = _hx_a(
  'open', function(self,message) 
    do return "[b]" .. message end
  end,
  'close', function(self,message) 
    do return "" .. message .. "[/b]" end
  end
  ,'__class__',  routines.conc.Emboldened
)
routines.conc.Emboldened.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Emboldened.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Italicized.new = function() 
  local self = _hx_new(routines.conc.Italicized.prototype)
  routines.conc.Italicized.super(self)
  return self
end
routines.conc.Italicized.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Italicized"] = routines.conc.Italicized
routines.conc.Italicized.__name__ = true
routines.conc.Italicized.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Italicized.prototype = _hx_a(
  'open', function(self,message) 
    do return "[i]" .. message end
  end,
  'close', function(self,message) 
    do return "" .. message .. "[/i]" end
  end
  ,'__class__',  routines.conc.Italicized
)
routines.conc.Italicized.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Italicized.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Refaced.new = function() 
  local self = _hx_new(routines.conc.Refaced.prototype)
  routines.conc.Refaced.super(self)
  return self
end
routines.conc.Refaced.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Refaced"] = routines.conc.Refaced
routines.conc.Refaced.__name__ = true
routines.conc.Refaced.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Refaced.prototype = _hx_a(
  'open', function(self,message) 
    do return message:toUpperCase() end
  end,
  'close', function(self,message) 
    do return message:toUpperCase() end
  end
  ,'__class__',  routines.conc.Refaced
)
routines.conc.Refaced.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Refaced.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Resized.new = function() 
  local self = _hx_new(routines.conc.Resized.prototype)
  routines.conc.Resized.super(self)
  return self
end
routines.conc.Resized.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Resized"] = routines.conc.Resized
routines.conc.Resized.__name__ = true
routines.conc.Resized.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Resized.prototype = _hx_a(
  'open', function(self,message) 
    do return message:toUpperCase() end
  end,
  'close', function(self,message) 
    do return message:toUpperCase() end
  end
  ,'__class__',  routines.conc.Resized
)
routines.conc.Resized.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Resized.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Strikedthrough.new = function() 
  local self = _hx_new(routines.conc.Strikedthrough.prototype)
  routines.conc.Strikedthrough.super(self)
  return self
end
routines.conc.Strikedthrough.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Strikedthrough"] = routines.conc.Strikedthrough
routines.conc.Strikedthrough.__name__ = true
routines.conc.Strikedthrough.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Strikedthrough.prototype = _hx_a(
  'open', function(self,message) 
    do return "[u]" .. message end
  end,
  'close', function(self,message) 
    do return "" .. message .. "[/u]" end
  end
  ,'__class__',  routines.conc.Strikedthrough
)
routines.conc.Strikedthrough.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Strikedthrough.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Transliterated.new = function() 
  local self = _hx_new(routines.conc.Transliterated.prototype)
  routines.conc.Transliterated.super(self)
  return self
end
routines.conc.Transliterated.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Transliterated"] = routines.conc.Transliterated
routines.conc.Transliterated.__name__ = true
routines.conc.Transliterated.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Transliterated.prototype = _hx_a(
  'open', function(self,message) 
    do return message:toUpperCase() end
  end,
  'close', function(self,message) 
    do return message:toUpperCase() end
  end
  ,'__class__',  routines.conc.Transliterated
)
routines.conc.Transliterated.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Transliterated.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

routines.conc.Underlined.new = function() 
  local self = _hx_new(routines.conc.Underlined.prototype)
  routines.conc.Underlined.super(self)
  return self
end
routines.conc.Underlined.super = function(self) 
  routines.virtual.AbstractRoutine.super(self);
end
_hxClasses["routines.conc.Underlined"] = routines.conc.Underlined
routines.conc.Underlined.__name__ = true
routines.conc.Underlined.__interfaces__ = {routines.impl.IRoutine,routines.impl.IEnabled}
routines.conc.Underlined.prototype = _hx_a(
  'open', function(self,message) 
    do return "[u]" .. message end
  end,
  'close', function(self,message) 
    do return "" .. message .. "[/u]" end
  end
  ,'__class__',  routines.conc.Underlined
)
routines.conc.Underlined.__super__ = routines.virtual.AbstractRoutine
setmetatable(routines.conc.Underlined.prototype,{__index=routines.virtual.AbstractRoutine.prototype})

sys.io.FileInput.new = function(f) 
  local self = _hx_new(sys.io.FileInput.prototype)
  sys.io.FileInput.super(self,f)
  return self
end
sys.io.FileInput.super = function(self,f) 
  self:set_bigEndian(lua.Boot.platformBigEndian);
  self.f = f;
  self._eof = false;
end
_hxClasses["sys.io.FileInput"] = sys.io.FileInput
sys.io.FileInput.__name__ = true
sys.io.FileInput.prototype = _hx_a(
  'readByte', function(self) 
    local byte = self.f:read(1);
    if (byte == nil) then 
      self._eof = true;
      _G.error(haxe.io.Eof.new(),0);
    end;
    do return _G.string.byte(byte) end
  end
  ,'__class__',  sys.io.FileInput
)
sys.io.FileInput.__super__ = haxe.io.Input
setmetatable(sys.io.FileInput.prototype,{__index=haxe.io.Input.prototype})
_hx_bit_clamp = function(v) 
  if v <= 2147483647 and v >= -2147483648 then
    if v > 0 then return _G.math.floor(v)
    else return _G.math.ceil(v)
    end
  end
  if v > 2251798999999999 then v = v*2 end;
  if (v ~= v or math.abs(v) == _G.math.huge) then return nil end
  return _hx_bit.band(v, 2147483647 ) - math.abs(_hx_bit.band(v, 2147483648))
end
pcall(require, 'bit')
if bit then
  _hx_bit = bit
elseif bit32 then
  local _hx_bit_raw = bit32
  _hx_bit = setmetatable({}, { __index = _hx_bit_raw });
  _hx_bit.bnot = function(...) return _hx_bit_clamp(_hx_bit_raw.bnot(...)) end;
  _hx_bit.bxor = function(...) return _hx_bit_clamp(_hx_bit_raw.bxor(...)) end;
end
local _hx_string_mt = _G.getmetatable('');
String.__oldindex = _hx_string_mt.__index;
_hx_string_mt.__index = String.__index;
_hx_string_mt.__add = function(a,b) return Std.string(a)..Std.string(b) end;
_hx_string_mt.__concat = _hx_string_mt.__add
_hx_array_mt.__index = Array.prototype

CompileTimeClassList.__meta__ = _hx_o({__fields__={obj=true},obj=_hx_o({__fields__={classLists=true},classLists=_hx_tab_array({[0]=_hx_tab_array({[0]="routines.conc,true,", "routines.conc.CapitalizedLetter,routines.conc.Colored,routines.conc.Emboldened,routines.conc.Italicized,routines.conc.Refaced,routines.conc.Resized,routines.conc.Strikedthrough,routines.conc.Transliterated,routines.conc.Underlined" }, 2) }, 1)})})
Main.DEBUG_MODE = true
Main.input = (function() 
  local _hx_1
  if (Main.DEBUG_MODE) then 
  _hx_1 = "I like big milk and I cannot lie."; else 
  _hx_1 = frontend.CommandLineUserInterface.new():readUserInput(); end
  return _hx_1
end )()
lua.Boot.platformBigEndian = _G.string.byte(_G.string.dump(function() 
end),7) > 0
lua.Boot.hiddenFields = {__id__=true, hx__closures=true, super=true, prototype=true, __fields__=true, __ifields__=true, __class__=true, __properties__=true}
obfuscator.Obfuscator.routineList = CompileTimeClassList.getTyped("routines.conc,true,",nil)
do

String.prototype.__class__ = (function() 
_hxClasses.String = String; return _hxClasses.String end)();
String.__name__ = true;
_hxClasses.Array = Array;
Array.__name__ = true;
String.prototype.__class__ = (function() 
_hxClasses.String = String; return _hxClasses.String end)();
String.__name__ = true;
_hxClasses.Array = Array;
Array.__name__ = true;
end
_G.math.randomseed(_G.os.time());
_hx_print = print or (function() end)
_hx_table = {}
_hx_table.pack = _G.table.pack or function(...)
    return {...}
end
_hx_table.unpack = _G.table.unpack or _G.unpack
_hx_table.maxn = _G.table.maxn or function(t)
  local maxn=0;
  for i in pairs(t) do
    maxn=type(i)=='number'and i>maxn and i or maxn
  end
  return maxn
end;
Main.main()
return _hx_exports
