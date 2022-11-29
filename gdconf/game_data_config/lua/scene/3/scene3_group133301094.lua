-- 基础信息
local base_info = {
	group_id = 133301094
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
	{ config_id = 94001, gadget_id = 70330249, pos = { x = -604.325, y = 110.773, z = 3945.679 }, rot = { x = 25.928, y = 303.427, z = 358.848 }, level = 33, area_id = 25 },
	{ config_id = 94003, gadget_id = 70360001, pos = { x = -608.855, y = 128.398, z = 3945.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094002, name = "QUEST_FINISH_94002", event = EventType.EVENT_QUEST_FINISH, source = "7303636", condition = "", action = "action_EVENT_QUEST_FINISH_94002", trigger_count = 0 },
	{ config_id = 1094004, name = "QUEST_START_94004", event = EventType.EVENT_QUEST_START, source = "7303607", condition = "", action = "action_EVENT_QUEST_START_94004", trigger_count = 0 },
	{ config_id = 1094005, name = "QUEST_FINISH_94005", event = EventType.EVENT_QUEST_FINISH, source = "7323004", condition = "", action = "action_EVENT_QUEST_FINISH_94005", trigger_count = 0 }
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
		gadgets = { 94001, 94003 },
		regions = { },
		triggers = { "QUEST_FINISH_94002", "QUEST_START_94004", "QUEST_FINISH_94005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_94002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_94004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_94005(context, evt)
	-- 将configid为 94001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"