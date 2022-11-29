-- 基础信息
local base_info = {
	group_id = 133304266
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
	{ config_id = 266001, gadget_id = 70350432, pos = { x = -1560.583, y = 258.600, z = 2384.891 }, rot = { x = 354.153, y = 157.007, z = 15.888 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1266002, name = "QUEST_START_266002", event = EventType.EVENT_QUEST_START, source = "7302613", condition = "", action = "action_EVENT_QUEST_START_266002", trigger_count = 0 },
	{ config_id = 1266003, name = "GROUP_LOAD_266003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_266003", action = "action_EVENT_GROUP_LOAD_266003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 266001 },
		regions = { },
		triggers = { "QUEST_START_266002", "GROUP_LOAD_266003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_266002(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 266001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_266003(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_266003(context, evt)
	-- 将configid为 266001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end