-- 基础信息
local base_info = {
	group_id = 111102048
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
	{ config_id = 48001, gadget_id = 70310017, pos = { x = 1216.570, y = 312.408, z = -1295.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1048002, name = "VARIABLE_CHANGE_48002", event = EventType.EVENT_VARIABLE_CHANGE, source = "test", condition = "", action = "action_EVENT_VARIABLE_CHANGE_48002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "test", value = 0, no_refresh = false }
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
		gadgets = { 48001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_48002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_48002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	        ScriptLib.SetGroupTempValue(context, "INT_VAR1", 2, {})
	        ScriptLib.PrintContextLog(context, "## RB_LOG : INT_VAR1: "..ScriptLib.GetGroupTempValue(context, "INT_VAR1",{}))
	        ScriptLib.SetGroupTempValue(context, "FLOAT_VAR1", 2.0, {})
	        ScriptLib.PrintContextLog(context, "## RB_LOG : FLOAT_VAR1: "..ScriptLib.GetGroupTempValue(context, "FLOAT_VAR1",{}))
	        ScriptLib.SetGroupTempValue(context, "FLOAT_VAR2", 2.5, {})
	        ScriptLib.PrintContextLog(context, "## RB_LOG : FLOAT_VAR2: "..ScriptLib.GetGroupTempValue(context, "FLOAT_VAR2",{}))
	
	return 0
end