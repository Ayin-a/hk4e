-- 基础信息
local base_info = {
	group_id = 133316086
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
	{ config_id = 86001, gadget_id = 70330401, pos = { x = 593.109, y = 264.595, z = 6448.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 86003, gadget_id = 70330401, pos = { x = 550.850, y = 272.078, z = 6546.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 86006, gadget_id = 70310001, pos = { x = 597.068, y = 286.430, z = 6456.494 }, rot = { x = 73.233, y = 336.258, z = 328.411 }, level = 32, area_id = 30 },
	{ config_id = 86007, gadget_id = 70310001, pos = { x = 544.871, y = 306.774, z = 6541.794 }, rot = { x = 11.937, y = 6.354, z = 55.928 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086002, name = "GADGET_STATE_CHANGE_86002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86002", action = "action_EVENT_GADGET_STATE_CHANGE_86002" },
	{ config_id = 1086004, name = "GADGET_STATE_CHANGE_86004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86004", action = "action_EVENT_GADGET_STATE_CHANGE_86004" },
	{ config_id = 1086005, name = "VARIABLE_CHANGE_86005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_86005", action = "action_EVENT_VARIABLE_CHANGE_86005", trigger_count = 2 },
	{ config_id = 1086008, name = "GADGET_STATE_CHANGE_86008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86008", action = "action_EVENT_GADGET_STATE_CHANGE_86008" },
	{ config_id = 1086009, name = "GADGET_STATE_CHANGE_86009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86009", action = "action_EVENT_GADGET_STATE_CHANGE_86009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		gadgets = { 86001, 86003, 86006, 86007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_86002", "GADGET_STATE_CHANGE_86004", "VARIABLE_CHANGE_86005", "GADGET_STATE_CHANGE_86008", "GADGET_STATE_CHANGE_86009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 创建指定group的指定suite内所有内容
function TLA_add_groupsuite(context, evt, group_id, suite_id)
	-- 添加suitesuite_id的新内容
	    ScriptLib.AddExtraGroupSuite(context, group_id, suite_id)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86002(context, evt)
	if 86001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86002(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为7323213 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 7323213, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86004(context, evt)
	if 86003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为7323213 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 7323213, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_86005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_86005(context, evt)
	TLA_add_groupsuite(context, evt, 133316092, 1)
	
	ScriptLib.SetGroupVariableValueByGroup(context, "Launch", 1, 133316092)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86008(context, evt)
	if 86006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86008(context, evt)
	-- 将configid为 86001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86009(context, evt)
	if 86007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86009(context, evt)
	-- 将configid为 86003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end