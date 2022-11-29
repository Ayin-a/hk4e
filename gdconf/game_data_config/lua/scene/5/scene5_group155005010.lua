-- 基础信息
local base_info = {
	group_id = 155005010
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
	{ config_id = 10001, gadget_id = 70500000, pos = { x = 209.859, y = 342.465, z = 256.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 10002, gadget_id = 70500000, pos = { x = 337.126, y = 342.787, z = 242.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 10003, gadget_id = 70500000, pos = { x = 255.883, y = 369.945, z = 89.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010004, name = "GATHER_10004", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_10004", trigger_count = 0 },
	{ config_id = 1010005, name = "VARIABLE_CHANGE_10005", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_10005", action = "action_EVENT_VARIABLE_CHANGE_10005", trigger_count = 0 }
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
		gadgets = { 10001, 10002, 10003 },
		regions = { },
		triggers = { "GATHER_10004", "VARIABLE_CHANGE_10005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_10004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10005(context, evt)
	-- 将本组内变量名为 "isfinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end