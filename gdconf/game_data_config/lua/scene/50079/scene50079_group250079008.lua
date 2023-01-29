-- 基础信息
local base_info = {
	group_id = 250079008
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
	{ config_id = 8001, gadget_id = 70310243, pos = { x = 500.017, y = 613.516, z = -1598.634 }, rot = { x = 0.000, y = 177.456, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008002, name = "GROUP_LOAD_8002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_8002", trigger_count = 0 },
	{ config_id = 1008003, name = "VARIABLE_CHANGE_8003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8003", action = "action_EVENT_VARIABLE_CHANGE_8003", trigger_count = 0 }
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
		gadgets = { 8001 },
		regions = { },
		triggers = { "GROUP_LOAD_8002", "VARIABLE_CHANGE_8003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_8002(context, evt)
	ScriptLib.ActiveGadgetItemGiving(context, 10000104, 250079008, 8001)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101770
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101770 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8003(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 250079004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250079005, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	return 0
end

require "V2_8/HandleGivingResult"