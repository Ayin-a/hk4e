-- 基础信息
local base_info = {
	group_id = 133002256
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 884, monster_id = 21010201, pos = { x = 1942.905, y = 230.353, z = -503.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 885, monster_id = 21010201, pos = { x = 1973.428, y = 225.325, z = -512.709 }, rot = { x = 0.000, y = 290.410, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 886, monster_id = 21010201, pos = { x = 1974.453, y = 219.388, z = -531.636 }, rot = { x = 0.000, y = 285.698, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 887, monster_id = 21010201, pos = { x = 1945.197, y = 223.570, z = -534.852 }, rot = { x = 0.000, y = 85.339, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 888, monster_id = 21010901, pos = { x = 1969.943, y = 226.611, z = -576.428 }, rot = { x = 0.000, y = 308.258, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 32, area_id = 3 },
	{ config_id = 890, monster_id = 21010701, pos = { x = 1958.574, y = 219.082, z = -579.411 }, rot = { x = 0.000, y = 330.075, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 892, monster_id = 21010301, pos = { x = 1957.564, y = 219.018, z = -577.670 }, rot = { x = 0.000, y = 329.885, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 3 },
	{ config_id = 895, monster_id = 21030101, pos = { x = 1948.880, y = 219.189, z = -576.165 }, rot = { x = 0.000, y = 55.335, z = 0.000 }, level = 31, drop_id = 1000100, disableWander = true, affix = { 1019 }, isElite = true, area_id = 3 },
	{ config_id = 897, monster_id = 21010301, pos = { x = 1960.191, y = 219.367, z = -576.688 }, rot = { x = 0.000, y = 339.322, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 3 },
	{ config_id = 899, monster_id = 21010501, pos = { x = 1931.311, y = 218.529, z = -641.425 }, rot = { x = 0.000, y = 24.215, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010, 1019 }, isElite = true, area_id = 3 },
	{ config_id = 900, monster_id = 21010501, pos = { x = 1952.490, y = 218.481, z = -637.017 }, rot = { x = 0.000, y = 337.902, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010, 1019 }, isElite = true, area_id = 3 },
	{ config_id = 901, monster_id = 21010501, pos = { x = 1959.230, y = 222.821, z = -622.996 }, rot = { x = 0.000, y = 298.039, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010, 1019 }, isElite = true, area_id = 3 },
	{ config_id = 902, monster_id = 21010501, pos = { x = 1934.517, y = 216.473, z = -663.805 }, rot = { x = 0.000, y = 6.627, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010 }, isElite = true, area_id = 3 },
	{ config_id = 903, monster_id = 21020201, pos = { x = 1933.526, y = 212.742, z = -670.765 }, rot = { x = 0.000, y = 31.913, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 1018 }, isElite = true, area_id = 3 },
	{ config_id = 904, monster_id = 20011201, pos = { x = 1936.747, y = 212.566, z = -670.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1018 }, area_id = 3 },
	{ config_id = 905, monster_id = 20011201, pos = { x = 1938.586, y = 212.459, z = -670.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1018 }, area_id = 3 },
	{ config_id = 906, monster_id = 20011201, pos = { x = 1941.036, y = 212.549, z = -671.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1018 }, area_id = 3 },
	{ config_id = 907, monster_id = 21030201, pos = { x = 1943.383, y = 213.009, z = -671.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1019 }, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2171, gadget_id = 70380004, pos = { x = 1971.891, y = 229.963, z = -453.499 }, rot = { x = 0.000, y = 185.900, z = 0.000 }, level = 29, route_id = 3002189, start_route = false, persistent = true, area_id = 3 },
	{ config_id = 2172, gadget_id = 70300083, pos = { x = 1955.355, y = 220.153, z = -541.243 }, rot = { x = 358.296, y = 5.032, z = 353.099 }, level = 28, area_id = 3 },
	{ config_id = 2173, gadget_id = 70300083, pos = { x = 1949.439, y = 218.534, z = -580.688 }, rot = { x = 3.945, y = 208.721, z = 4.126 }, level = 28, area_id = 3 },
	{ config_id = 2174, gadget_id = 70300083, pos = { x = 1956.625, y = 218.720, z = -582.059 }, rot = { x = 0.243, y = 173.011, z = 354.028 }, level = 28, area_id = 3 },
	{ config_id = 2202, gadget_id = 70220005, pos = { x = 1941.093, y = 214.229, z = -626.222 }, rot = { x = 0.000, y = 26.925, z = 0.000 }, level = 28, area_id = 3 },
	{ config_id = 2203, gadget_id = 70220005, pos = { x = 1941.131, y = 213.338, z = -641.494 }, rot = { x = 0.000, y = 337.474, z = 0.000 }, level = 28, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000301, name = "PLATFORM_REACH_POINT_301", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_301", action = "action_EVENT_PLATFORM_REACH_POINT_301" },
	{ config_id = 1000302, name = "PLATFORM_REACH_POINT_302", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_302", action = "action_EVENT_PLATFORM_REACH_POINT_302" },
	{ config_id = 1000303, name = "PLATFORM_REACH_POINT_303", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_303", action = "action_EVENT_PLATFORM_REACH_POINT_303" },
	{ config_id = 1000304, name = "PLATFORM_REACH_POINT_304", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_304", action = "action_EVENT_PLATFORM_REACH_POINT_304" },
	{ config_id = 1000305, name = "ANY_GADGET_DIE_305", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_305", action = "action_EVENT_ANY_GADGET_DIE_305" },
	{ config_id = 1000306, name = "ANY_GADGET_DIE_306", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_306", action = "action_EVENT_ANY_GADGET_DIE_306" },
	{ config_id = 1000307, name = "ANY_GADGET_DIE_307", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307", action = "action_EVENT_ANY_GADGET_DIE_307" },
	{ config_id = 1000308, name = "PLATFORM_REACH_POINT_308", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_308", action = "" },
	{ config_id = 1000309, name = "PLATFORM_REACH_POINT_309", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_309", action = "action_EVENT_PLATFORM_REACH_POINT_309" },
	{ config_id = 1000310, name = "PLATFORM_REACH_POINT_310", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_310", action = "action_EVENT_PLATFORM_REACH_POINT_310" },
	{ config_id = 1000311, name = "PLATFORM_REACH_POINT_311", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_311", action = "action_EVENT_PLATFORM_REACH_POINT_311" },
	{ config_id = 1000312, name = "ANY_MONSTER_DIE_312", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_312", action = "action_EVENT_ANY_MONSTER_DIE_312" },
	{ config_id = 1000313, name = "GADGET_CREATE_313", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313", action = "action_EVENT_GADGET_CREATE_313" },
	{ config_id = 1000314, name = "ANY_GADGET_DIE_314", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_314", action = "action_EVENT_ANY_GADGET_DIE_314" },
	{ config_id = 1000315, name = "PLATFORM_REACH_POINT_315", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_315", action = "action_EVENT_PLATFORM_REACH_POINT_315" },
	{ config_id = 1000319, name = "ANY_GADGET_DIE_319", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_319", action = "action_EVENT_ANY_GADGET_DIE_319" },
	{ config_id = 1000328, name = "QUEST_FINISH_328", event = EventType.EVENT_QUEST_FINISH, source = "48801", condition = "condition_EVENT_QUEST_FINISH_328", action = "action_EVENT_QUEST_FINISH_328" },
	{ config_id = 1000329, name = "PLATFORM_REACH_POINT_329", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_329", action = "action_EVENT_PLATFORM_REACH_POINT_329" },
	{ config_id = 1000330, name = "QUEST_FINISH_330", event = EventType.EVENT_QUEST_FINISH, source = "48803", condition = "condition_EVENT_QUEST_FINISH_330", action = "action_EVENT_QUEST_FINISH_330" },
	{ config_id = 1000332, name = "SPECIFIC_GADGET_HP_CHANGE_332", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "2171", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_332", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_332" },
	{ config_id = 1000333, name = "SPECIFIC_GADGET_HP_CHANGE_333", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "2171", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_333", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_333" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isall", value = 0, no_refresh = false },
	{ config_id = 2, name = "2174", value = 0, no_refresh = false },
	{ config_id = 3, name = "2173", value = 0, no_refresh = false },
	{ config_id = 4, name = "iskill", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_319" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2171 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_301", "PLATFORM_REACH_POINT_302", "PLATFORM_REACH_POINT_303", "PLATFORM_REACH_POINT_304", "ANY_GADGET_DIE_305", "ANY_GADGET_DIE_306", "ANY_GADGET_DIE_307", "PLATFORM_REACH_POINT_308", "PLATFORM_REACH_POINT_309", "PLATFORM_REACH_POINT_310", "PLATFORM_REACH_POINT_311", "ANY_MONSTER_DIE_312", "GADGET_CREATE_313", "ANY_GADGET_DIE_314", "PLATFORM_REACH_POINT_315", "ANY_GADGET_DIE_319", "QUEST_FINISH_328", "PLATFORM_REACH_POINT_329", "QUEST_FINISH_330", "SPECIFIC_GADGET_HP_CHANGE_332", "SPECIFIC_GADGET_HP_CHANGE_333" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_301(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 2 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_301(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 884, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为2173的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2173 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2174的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2174 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2172的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2172 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_302(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 3 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_302(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 885, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_303(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 4 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_303(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 886, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_304(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 5 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_304(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 887, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为2202的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2202 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2203的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2203 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_305(context, evt)
	if 2172 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"iskill"为0
	if ScriptLib.GetGroupVariableValue(context, "iskill") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_305(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_306(context, evt)
	if 2174 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_306(context, evt)
	-- 将本组内变量名为 "2174" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "2174", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "2174") + ScriptLib.GetGroupVariableValue(context, "2173") == 2 then
	
	-- 将本组内变量名为 "iskill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "iskill", 1) then
	  return -1
	end
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002191) then
	  return -1
	end
	
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307(context, evt)
	if 2173 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307(context, evt)
	-- 将本组内变量名为 "2174" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "2173", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "2174") + ScriptLib.GetGroupVariableValue(context, "2173") == 2 then
	
	-- 将本组内变量名为 "iskill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "iskill", 1) then
	  return -1
	end
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002191) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_308(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 0 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_309(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 1 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_309(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 899, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_310(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 2 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_310(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 902, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_311(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 4 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_311(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 904, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 905, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_312(context, evt)
	if 903 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_312(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002256, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_313(context, evt)
	if 2171 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_313(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002250, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_314(context, evt)
	if 2172 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_314(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 897, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 892, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 895, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 890, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 898, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_315(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002192 的路线中的 3 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002192 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_315(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002256") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_319(context, evt)
	if 2171 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_319(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022561") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_328(context, evt)
	--检查ID为48801的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 48801 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_328(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_329(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002192 的路线中的 4 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002192 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_329(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002256, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_330(context, evt)
	--检查ID为48803的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 48803 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_330(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_332(context, evt)
	--[[判断指定configid的gadget的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_332(context, evt)
	-- 将configid为 2171 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2171, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_333(context, evt)
	--[[判断指定configid的gadget的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_333(context, evt)
	-- 将configid为 2171 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2171, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end