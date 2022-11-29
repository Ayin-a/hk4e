-- 基础信息
local base_info = {
	group_id = 199002178
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
	{ config_id = 178001, gadget_id = 70310332, pos = { x = 460.084, y = 135.604, z = -397.785 }, rot = { x = 0.000, y = 233.371, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 178002, gadget_id = 70310332, pos = { x = 461.323, y = 135.671, z = -396.958 }, rot = { x = 0.000, y = 250.679, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 178003, gadget_id = 70310332, pos = { x = 461.540, y = 135.656, z = -397.582 }, rot = { x = 0.000, y = 263.671, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 178004, gadget_id = 70310332, pos = { x = 458.487, y = 135.549, z = -399.221 }, rot = { x = 0.000, y = 48.144, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 178005, gadget_id = 70310332, pos = { x = 458.369, y = 135.614, z = -397.741 }, rot = { x = 0.000, y = 105.006, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 178006, gadget_id = 70310332, pos = { x = 459.657, y = 135.617, z = -398.220 }, rot = { x = 0.000, y = 17.059, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 178008, gadget_id = 70360001, pos = { x = 464.608, y = 130.996, z = -400.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1178007, name = "GROUP_LOAD_178007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_178007", action = "action_EVENT_GROUP_LOAD_178007", trigger_count = 0 }
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
		gadgets = { 178008 },
		regions = { },
		triggers = { "GROUP_LOAD_178007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 178001, 178002, 178003, 178004, 178005, 178006 },
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
function condition_EVENT_GROUP_LOAD_178007(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199002171) ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199002099) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_178007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002178, 2)
	
	return 0
end