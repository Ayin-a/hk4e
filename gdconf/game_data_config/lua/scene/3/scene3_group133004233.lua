-- 基础信息
local base_info = {
	group_id = 133004233
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1369
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
	{ config_id = 1369, gadget_id = 70211123, pos = { x = 2477.950, y = 244.051, z = -370.684 }, rot = { x = 0.000, y = 138.745, z = 356.785 }, level = 16, drop_tag = "解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1233001, name = "VARIABLE_CHANGE_233001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_233001", action = "action_EVENT_VARIABLE_CHANGE_233001", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "num_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "num_2", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		triggers = { "VARIABLE_CHANGE_233001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1369 },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_233001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"num_1"为1
	if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 1 then
			return false
	end
	
	-- 判断变量"num_2"为1
	if ScriptLib.GetGroupVariableValue(context, "num_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_233001(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004233, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end