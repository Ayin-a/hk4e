-- 基础信息
local base_info = {
	group_id = 199002170
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
	{ config_id = 170001, gadget_id = 70310332, pos = { x = 433.939, y = 127.864, z = -407.341 }, rot = { x = 0.000, y = 303.991, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 170002, gadget_id = 70310332, pos = { x = 435.331, y = 127.952, z = -406.064 }, rot = { x = 0.000, y = 250.679, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 170003, gadget_id = 70310332, pos = { x = 435.548, y = 128.117, z = -406.688 }, rot = { x = 0.000, y = 263.671, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 170004, gadget_id = 70310332, pos = { x = 432.495, y = 127.802, z = -408.327 }, rot = { x = 0.000, y = 48.144, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 170005, gadget_id = 70310332, pos = { x = 432.377, y = 127.475, z = -406.847 }, rot = { x = 0.000, y = 105.006, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 170007, gadget_id = 70360001, pos = { x = 433.275, y = 125.043, z = -409.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1170006, name = "GROUP_LOAD_170006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_170006", action = "action_EVENT_GROUP_LOAD_170006", trigger_count = 0 }
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
		gadgets = { 170007 },
		regions = { },
		triggers = { "GROUP_LOAD_170006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 170001, 170002, 170003, 170004, 170005 },
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
function condition_EVENT_GROUP_LOAD_170006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199002099) ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199002171) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_170006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002170, 2)
	
	return 0
end