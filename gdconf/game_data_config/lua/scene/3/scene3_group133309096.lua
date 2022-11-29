-- 基础信息
local base_info = {
	group_id = 133309096
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
	{ config_id = 96001, gadget_id = 70330416, pos = { x = -2374.126, y = 238.668, z = 5561.992 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 96002, gadget_id = 70330275, pos = { x = -2349.875, y = 242.600, z = 5562.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096003, name = "QUEST_FINISH_96003", event = EventType.EVENT_QUEST_FINISH, source = "7305441", condition = "", action = "action_EVENT_QUEST_FINISH_96003", trigger_count = 0 },
	{ config_id = 1096004, name = "QUEST_FINISH_96004", event = EventType.EVENT_QUEST_FINISH, source = "7305415", condition = "", action = "action_EVENT_QUEST_FINISH_96004" },
	{ config_id = 1096005, name = "QUEST_START_96005", event = EventType.EVENT_QUEST_START, source = "7305415", condition = "", action = "action_EVENT_QUEST_START_96005", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_96003", "QUEST_FINISH_96004", "QUEST_START_96005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_96003(context, evt)
	-- 将configid为 96001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_96004(context, evt)
	-- 将configid为 96001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_96005(context, evt)
	-- 将configid为 96002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 96001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end