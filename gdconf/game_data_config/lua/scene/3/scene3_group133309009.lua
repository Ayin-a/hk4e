-- 基础信息
local base_info = {
	group_id = 133309009
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
	{ config_id = 9001, gadget_id = 70330419, pos = { x = -2349.308, y = 185.100, z = 5374.067 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "QUEST_START_9002", event = EventType.EVENT_QUEST_START, source = "7305439", condition = "", action = "action_EVENT_QUEST_START_9002", trigger_count = 0 },
	{ config_id = 1009003, name = "QUEST_FINISH_9003", event = EventType.EVENT_QUEST_FINISH, source = "7305440", condition = "", action = "action_EVENT_QUEST_FINISH_9003", trigger_count = 0 },
	{ config_id = 1009004, name = "QUEST_START_9004", event = EventType.EVENT_QUEST_START, source = "7305404", condition = "", action = "action_EVENT_QUEST_START_9004", trigger_count = 0 }
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
		gadgets = { 9001 },
		regions = { },
		triggers = { "QUEST_START_9002", "QUEST_FINISH_9003", "QUEST_START_9004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_9002(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_9003(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9004(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end