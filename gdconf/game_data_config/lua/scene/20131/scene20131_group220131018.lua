-- 基础信息
local base_info = {
	group_id = 220131018
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
	{ config_id = 18001, gadget_id = 70350004, pos = { x = 105.030, y = -2.855, z = 22.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18002, gadget_id = 70350005, pos = { x = -19.775, y = 3.026, z = 26.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18003, gadget_id = 70310001, pos = { x = -53.759, y = 3.828, z = -4.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018004, name = "QUEST_START_18004", event = EventType.EVENT_QUEST_START, source = "1102626", condition = "", action = "action_EVENT_QUEST_START_18004", trigger_count = 0 },
	{ config_id = 1018005, name = "QUEST_FINISH_18005", event = EventType.EVENT_QUEST_FINISH, source = "1102626", condition = "", action = "action_EVENT_QUEST_FINISH_18005", trigger_count = 0 }
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
		triggers = { "QUEST_START_18004", "QUEST_FINISH_18005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_18004(context, evt)
	-- 将configid为 18001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_18005(context, evt)
	-- 将configid为 18001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end