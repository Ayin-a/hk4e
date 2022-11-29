-- 基础信息
local base_info = {
	group_id = 220037006
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
	{ config_id = 6001, gadget_id = 70350003, pos = { x = 35.348, y = -4.145, z = 32.967 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70350002, pos = { x = 132.490, y = 2.703, z = 33.403 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6007, gadget_id = 70900201, pos = { x = 159.019, y = 18.198, z = 23.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006002, name = "QUEST_START_6002", event = EventType.EVENT_QUEST_START, source = "1012208", condition = "", action = "action_EVENT_QUEST_START_6002" },
	{ config_id = 1006003, name = "QUEST_START_6003", event = EventType.EVENT_QUEST_START, source = "1012210", condition = "", action = "action_EVENT_QUEST_START_6003" },
	{ config_id = 1006005, name = "QUEST_START_6005", event = EventType.EVENT_QUEST_START, source = "1012216", condition = "", action = "action_EVENT_QUEST_START_6005" },
	{ config_id = 1006006, name = "QUEST_START_6006", event = EventType.EVENT_QUEST_START, source = "1012207", condition = "", action = "action_EVENT_QUEST_START_6006" }
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
		gadgets = { 6001, 6004 },
		regions = { },
		triggers = { "QUEST_START_6002", "QUEST_START_6003", "QUEST_START_6005", "QUEST_START_6006" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_6002(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_6003(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_6005(context, evt)
	-- 将configid为 6004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为6007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_6006(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end