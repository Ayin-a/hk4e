-- 基础信息
local base_info = {
	group_id = 155005173
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173001, gadget_id = 70500000, pos = { x = 164.836, y = 271.923, z = 365.922 }, rot = { x = 0.000, y = 236.335, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 173002, gadget_id = 70500000, pos = { x = 181.563, y = 151.116, z = 77.856 }, rot = { x = 0.000, y = 303.902, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 173003, gadget_id = 70500000, pos = { x = 242.199, y = 275.442, z = 433.949 }, rot = { x = 0.000, y = 303.902, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 173004, gadget_id = 70500000, pos = { x = 335.150, y = 332.883, z = 300.595 }, rot = { x = 0.000, y = 303.902, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 173005, gadget_id = 70500000, pos = { x = 436.990, y = 324.340, z = 294.742 }, rot = { x = 0.000, y = 303.902, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 173006, gadget_id = 70500000, pos = { x = 166.947, y = 356.901, z = 286.251 }, rot = { x = 0.000, y = 303.902, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 173007, gadget_id = 70500000, pos = { x = 192.898, y = 345.667, z = 175.384 }, rot = { x = 0.000, y = 19.741, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1173008, name = "GATHER_173008", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_173008", trigger_count = 0 },
	{ config_id = 1173009, name = "VARIABLE_CHANGE_173009", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_173009", action = "action_EVENT_VARIABLE_CHANGE_173009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 173001, 173002, 173003, 173004, 173005, 173006, 173007 },
		regions = { },
		triggers = { "GATHER_173008", "VARIABLE_CHANGE_173009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_173008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_173009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为7
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_173009(context, evt)
	-- 将本组内变量名为 "isfinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end