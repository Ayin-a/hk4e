-- 基础信息
local base_info = {
	group_id = 133210292
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
	{ config_id = 292001, gadget_id = 70360184, pos = { x = -3810.804, y = 125.464, z = -923.498 }, rot = { x = 0.000, y = 302.788, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	{ config_id = 292005, gadget_id = 70950134, pos = { x = -3810.804, y = 126.867, z = -923.498 }, rot = { x = 0.000, y = 198.424, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 292008, gadget_id = 70590058, pos = { x = -3815.662, y = 124.111, z = -920.565 }, rot = { x = 0.000, y = 284.685, z = 0.000 }, level = 30, interact_id = 59, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1292002, name = "VARIABLE_CHANGE_292002", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_292002", action = "action_EVENT_VARIABLE_CHANGE_292002", trigger_count = 0 },
	{ config_id = 1292003, name = "VARIABLE_CHANGE_292003", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_292003", action = "action_EVENT_VARIABLE_CHANGE_292003", trigger_count = 0 },
	{ config_id = 1292004, name = "GADGET_STATE_CHANGE_292004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_292004", action = "action_EVENT_GADGET_STATE_CHANGE_292004", trigger_count = 0 },
	{ config_id = 1292007, name = "GADGET_STATE_CHANGE_292007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_292007", action = "action_EVENT_GADGET_STATE_CHANGE_292007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetActive", value = 0, no_refresh = true },
	{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 292001, state = 202 },
			{ config_id = 292005, state = 0 },
			{ config_id = 292008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_292007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetActive", value = 0, no_refresh = true },
			{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 292001, state = 203 },
			{ config_id = 292008, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetActive", value = 0, no_refresh = true },
			{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_292002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_292002(context, evt)
	-- 将configid为 292001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_292003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_292003(context, evt)
	-- 将configid为 292001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_292004(context, evt)
	if 292001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_292004(context, evt)
	-- 针对当前group内变量名为 "ActiveCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "ActiveCount", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "QuestFinish2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "QuestFinish2", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210292, EntityType.GADGET, 292005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210292, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_292007(context, evt)
	if 292008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_292007(context, evt)
	-- 通知场景上的所有玩家播放名字为321029201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321029201, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 针对当前group内变量名为 "ActiveCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "ActiveCount", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "QuestFinish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "QuestFinish2", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210292, 2)
	
	return 0
end