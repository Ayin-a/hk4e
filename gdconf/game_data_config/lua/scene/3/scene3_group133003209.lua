-- 基础信息
local base_info = {
	group_id = 133003209
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 829, monster_id = 20010501, pos = { x = 2454.249, y = 308.088, z = -1665.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 830, monster_id = 20010501, pos = { x = 2452.329, y = 308.357, z = -1669.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 831, monster_id = 21010101, pos = { x = 2208.952, y = 234.766, z = -1301.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 832, monster_id = 21010101, pos = { x = 2207.284, y = 234.892, z = -1300.995 }, rot = { x = 0.000, y = 24.216, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2959, gadget_id = 70290006, pos = { x = 2151.026, y = 234.969, z = -1653.736 }, rot = { x = 0.000, y = 36.078, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 2960, gadget_id = 70290006, pos = { x = 2149.987, y = 235.031, z = -1654.420 }, rot = { x = 0.000, y = 90.697, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000169, name = "CLIENT_EXECUTE_169", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_169", trigger_count = 0 }
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
		monsters = { 829, 830, 831, 832 },
		gadgets = { 2959, 2960 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_169" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_169(context, evt)
	-- 针对groupid为 133003209 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
	 ScriptLib.SetGadgetEnableInteract(context, 133003209, this_gadget, true)
	
	return 0
end