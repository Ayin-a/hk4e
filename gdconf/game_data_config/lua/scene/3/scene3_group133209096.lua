-- 基础信息
local base_info = {
	group_id = 133209096
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
	{ config_id = 96001, gadget_id = 70290772, pos = { x = -2190.450, y = 199.902, z = -3482.123 }, rot = { x = 0.000, y = 34.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 96002, gadget_id = 70290773, pos = { x = -2192.405, y = 200.351, z = -3473.738 }, rot = { x = 0.000, y = 279.329, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096003, name = "GROUP_LOAD_96003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_96003", trigger_count = 0 }
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
		gadgets = { 96001, 96002 },
		regions = { },
		triggers = { "GROUP_LOAD_96003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_96003(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,96001, GadgetState.Default)
	
	return 0
end