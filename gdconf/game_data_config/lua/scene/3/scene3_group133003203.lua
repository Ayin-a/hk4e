-- 基础信息
local base_info = {
	group_id = 133003203
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
	{ config_id = 2953, gadget_id = 70290007, pos = { x = 2454.599, y = 308.603, z = -1669.387 }, rot = { x = 356.514, y = 98.469, z = 7.819 }, level = 10, area_id = 1 },
	{ config_id = 2954, gadget_id = 70290007, pos = { x = 2454.455, y = 308.447, z = -1668.298 }, rot = { x = 353.505, y = 194.972, z = 348.768 }, level = 10, area_id = 1 },
	{ config_id = 3102, gadget_id = 70290005, pos = { x = 2209.853, y = 236.012, z = -1402.648 }, rot = { x = 0.000, y = 148.468, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000170, name = "CLIENT_EXECUTE_170", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_170", trigger_count = 0 }
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
	rand_suite = true
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
		gadgets = { 2953, 2954, 3102 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_170" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_170(context, evt)
	-- 针对groupid为 133003203 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
	 ScriptLib.SetGadgetEnableInteract(context, 133003203, this_gadget, true)
	return 0
end