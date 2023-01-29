-- 基础信息
local base_info = {
	group_id = 220139018
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
	{ config_id = 18001, gadget_id = 70310251, pos = { x = 121.353, y = 101.487, z = 35.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, arguments = { 25 } },
	{ config_id = 18002, gadget_id = 70310413, pos = { x = 120.152, y = 97.625, z = 9.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18003, gadget_id = 70310282, pos = { x = 120.152, y = 99.695, z = 7.203 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018004, name = "OBSERVATION_POINT_NOTIFY_18004", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_18004", trigger_count = 0 }
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
		gadgets = { 18001, 18002, 18003 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_18004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_18004(context, evt)
	if 18001 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,18002, GadgetState.GearStart)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "eyefinish3", 1, 220139022)
		
		ScriptLib.SetGadgetStateByConfigId(context,18001, 405)
		
		ScriptLib.SetGadgetStateByConfigId(context,18003, GadgetState.GearStart)
	end
	
	return 0
end