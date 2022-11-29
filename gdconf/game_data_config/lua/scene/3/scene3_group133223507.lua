-- 基础信息
local base_info = {
	group_id = 133223507
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
	{ config_id = 507001, gadget_id = 70290159, pos = { x = -6144.760, y = 208.416, z = -2502.867 }, rot = { x = 358.435, y = 322.041, z = 353.136 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 507002, gadget_id = 70290159, pos = { x = -6167.355, y = 215.897, z = -2502.345 }, rot = { x = 0.000, y = 120.295, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 507003, gadget_id = 70290159, pos = { x = -6162.375, y = 217.002, z = -2483.217 }, rot = { x = 0.000, y = 173.227, z = 347.152 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 关闭雾灯
	{ config_id = 1507004, name = "QUEST_FINISH_507004", event = EventType.EVENT_QUEST_FINISH, source = "7223006", condition = "", action = "action_EVENT_QUEST_FINISH_507004", trigger_count = 0 }
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
		gadgets = { 507001, 507002, 507003 },
		regions = { },
		triggers = { "QUEST_FINISH_507004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_507004(context, evt)
	        for k,v in pairs(gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 133223507, v.config_id, 0)
	        end
	return 0
end