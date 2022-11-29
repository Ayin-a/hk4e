-- 基础信息
local base_info = {
	group_id = 155005124
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
	{ config_id = 124001, gadget_id = 70500000, pos = { x = 278.591, y = 175.436, z = 853.695 }, rot = { x = 0.000, y = 276.490, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 124002, gadget_id = 70500000, pos = { x = 359.680, y = 121.713, z = 954.579 }, rot = { x = 0.000, y = 185.641, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 124004, gadget_id = 70500000, pos = { x = 680.639, y = 187.833, z = 634.464 }, rot = { x = 359.931, y = 103.013, z = 0.126 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124005, name = "GATHER_124005", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_124005", trigger_count = 0 },
	{ config_id = 1124006, name = "VARIABLE_CHANGE_124006", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_124006", action = "action_EVENT_VARIABLE_CHANGE_124006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 124003, gadget_id = 70500000, pos = { x = 435.907, y = 150.194, z = 1006.781 }, rot = { x = 0.000, y = 8.037, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 }
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
		gadgets = { 124001, 124002, 124004 },
		regions = { },
		triggers = { "GATHER_124005", "VARIABLE_CHANGE_124006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_124005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_124006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_124006(context, evt)
	-- 将本组内变量名为 "isfinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end