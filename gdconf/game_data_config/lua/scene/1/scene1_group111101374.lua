-- 基础信息
local base_info = {
	group_id = 111101374
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
	{ config_id = 374001, gadget_id = 70290772, pos = { x = 2774.221, y = 262.158, z = -1212.050 }, rot = { x = 0.000, y = 343.551, z = 0.000 }, level = 1 },
	{ config_id = 374002, gadget_id = 70290773, pos = { x = 2767.311, y = 262.058, z = -1207.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1374003, name = "GROUP_LOAD_374003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_374003", trigger_count = 0 }
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
		gadgets = { 374001, 374002 },
		regions = { },
		triggers = { "GROUP_LOAD_374003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_374003(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,374001, GadgetState.Default)
	
	return 0
end