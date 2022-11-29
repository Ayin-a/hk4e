-- 基础信息
local base_info = {
	group_id = 133301487
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
	{ config_id = 487002, npc_id = 20915, pos = { x = -1363.467, y = 152.000, z = 2842.484 }, rot = { x = 0.000, y = 33.866, z = 0.000 }, area_id = 21 }
}

-- 装置
gadgets = {
	{ config_id = 487001, gadget_id = 70290475, pos = { x = -1362.239, y = 152.141, z = 2844.155 }, rot = { x = 0.000, y = 9.403, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1487003, name = "QUEST_START_487003", event = EventType.EVENT_QUEST_START, source = "7300306", condition = "", action = "action_EVENT_QUEST_START_487003", trigger_count = 0 }
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
	suite = 3,
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
		gadgets = { 487001 },
		regions = { },
		triggers = { "QUEST_START_487003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 487001 },
		regions = { },
		triggers = { "QUEST_START_487003" },
		npcs = { 487002 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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

-- 触发操作
function action_EVENT_QUEST_START_487003(context, evt)
	-- 将configid为 487001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 487001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"