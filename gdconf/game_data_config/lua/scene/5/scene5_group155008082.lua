-- 基础信息
local base_info = {
	group_id = 155008082
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
	{ config_id = 82002, gadget_id = 70500000, pos = { x = -486.373, y = 219.425, z = 358.594 }, rot = { x = 0.000, y = 85.362, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82003, gadget_id = 70500000, pos = { x = -322.210, y = 252.652, z = 367.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82005, gadget_id = 70500000, pos = { x = -155.404, y = 207.006, z = 133.607 }, rot = { x = 0.000, y = 5.408, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82006, gadget_id = 70500000, pos = { x = -125.121, y = 240.645, z = 201.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82007, gadget_id = 70500000, pos = { x = -284.846, y = 227.083, z = 157.247 }, rot = { x = 0.000, y = 44.672, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82008, gadget_id = 70500000, pos = { x = -352.751, y = 218.795, z = 428.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82010, gadget_id = 70500000, pos = { x = -211.329, y = 194.179, z = 302.038 }, rot = { x = 0.000, y = 280.636, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82011, gadget_id = 70500000, pos = { x = -102.377, y = 247.720, z = 348.591 }, rot = { x = 0.000, y = 237.527, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82012, gadget_id = 70500000, pos = { x = -525.053, y = 237.038, z = 432.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82013, gadget_id = 70500000, pos = { x = -204.937, y = 198.607, z = 216.079 }, rot = { x = 0.000, y = 345.677, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82014, gadget_id = 70500000, pos = { x = -31.602, y = 209.531, z = 2.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82015, gadget_id = 70500000, pos = { x = -179.439, y = 257.026, z = 451.042 }, rot = { x = 0.000, y = 279.928, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82016, gadget_id = 70500000, pos = { x = -222.349, y = 180.500, z = 452.629 }, rot = { x = 0.942, y = 70.321, z = 359.663 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82017, gadget_id = 70500000, pos = { x = -132.905, y = 186.766, z = 509.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082018, name = "GATHER_82018", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_82018", trigger_count = 0 },
	{ config_id = 1082019, name = "VARIABLE_CHANGE_82019", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_82019", action = "action_EVENT_VARIABLE_CHANGE_82019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 82001, gadget_id = 70500000, pos = { x = -590.998, y = 188.214, z = 534.025 }, rot = { x = 0.000, y = 278.666, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
		{ config_id = 82004, gadget_id = 70500000, pos = { x = -151.102, y = 301.403, z = 417.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
		{ config_id = 82009, gadget_id = 70500000, pos = { x = -182.513, y = 189.186, z = 365.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 }
	}
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
		gadgets = { 82002, 82003, 82005, 82006, 82007, 82008, 82010, 82011, 82012, 82013, 82014, 82015, 82016, 82017 },
		regions = { },
		triggers = { "GATHER_82018", "VARIABLE_CHANGE_82019" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_82018(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为14
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82019(context, evt)
	-- 将本组内变量名为 "isfinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end