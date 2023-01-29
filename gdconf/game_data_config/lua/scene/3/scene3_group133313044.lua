-- 基础信息
local base_info = {
	group_id = 133313044
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
	-- 1
	{ config_id = 44001, gadget_id = 70350433, pos = { x = -152.372, y = 178.794, z = 5394.621 }, rot = { x = 38.495, y = 342.819, z = 39.116 }, level = 32, persistent = true, area_id = 32 },
	-- 2
	{ config_id = 44002, gadget_id = 70350433, pos = { x = -121.706, y = 195.012, z = 5350.732 }, rot = { x = 351.103, y = 310.233, z = 30.031 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1044003, name = "GROUP_LOAD_44003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_44003", action = "action_EVENT_GROUP_LOAD_44003", trigger_count = 0 },
	{ config_id = 1044004, name = "QUEST_START_44004", event = EventType.EVENT_QUEST_START, source = "7318713", condition = "", action = "action_EVENT_QUEST_START_44004" }
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
		gadgets = { 44001, 44002 },
		regions = { },
		triggers = { "GROUP_LOAD_44003", "QUEST_START_44004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_44003(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44003(context, evt)
	ScriptLib.GoToGroupSuite(context, 133313044, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_44004(context, evt)
	-- 将configid为 44001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end