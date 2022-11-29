-- 基础信息
local base_info = {
	group_id = 155006183
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
	{ config_id = 183001, gadget_id = 70211111, pos = { x = 249.990, y = 177.885, z = -244.064 }, rot = { x = 352.144, y = 356.683, z = 346.996 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1183002, name = "VARIABLE_CHANGE_183002", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_183002", action = "action_EVENT_VARIABLE_CHANGE_183002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activecount", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 183003, gadget_id = 70290281, pos = { x = 259.141, y = 191.249, z = -240.557 }, rot = { x = 342.502, y = 263.785, z = 184.306 }, level = 36, persistent = true, area_id = 200 }
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
		triggers = { "VARIABLE_CHANGE_183002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 183001 },
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
function condition_EVENT_VARIABLE_CHANGE_183002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为2
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_183002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 155006183, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end