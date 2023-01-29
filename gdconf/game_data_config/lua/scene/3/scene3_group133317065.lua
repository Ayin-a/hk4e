-- 基础信息
local base_info = {
	group_id = 133317065
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
	{ config_id = 65002, gadget_id = 70220007, pos = { x = 865.448, y = 250.896, z = 6009.357 }, rot = { x = 0.000, y = 58.947, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065001, name = "ANY_GADGET_DIE_65001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65001", action = "action_EVENT_ANY_GADGET_DIE_65001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "obstructQ", value = 0, no_refresh = true }
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
		gadgets = { 65002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65001(context, evt)
	if 65002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65001(context, evt)
	-- 将本组内变量名为 "obstructQ" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "obstructQ", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "obstructQ" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "obstructQ", 1, 133317040) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end