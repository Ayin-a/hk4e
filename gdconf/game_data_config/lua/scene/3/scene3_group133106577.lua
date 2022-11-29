-- 基础信息
local base_info = {
	group_id = 133106577
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
	{ config_id = 577001, gadget_id = 70290198, pos = { x = -359.119, y = 246.147, z = 1759.054 }, rot = { x = 348.780, y = 211.299, z = 356.598 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 577002, gadget_id = 70290190, pos = { x = -367.861, y = 246.270, z = 1771.921 }, rot = { x = 352.266, y = 359.522, z = 29.858 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1577003, name = "ANY_GADGET_DIE_577003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_577003", action = "action_EVENT_ANY_GADGET_DIE_577003" }
}

-- 变量
variables = {
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
		gadgets = { 577001, 577002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_577003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_577003(context, evt)
	if 577001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_577003(context, evt)
	-- 将本组内变量名为 "barrierDestroyed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "barrierDestroyed", 1, 133106571) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end