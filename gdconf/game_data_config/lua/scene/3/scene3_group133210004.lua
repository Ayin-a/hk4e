-- 基础信息
local base_info = {
	group_id = 133210004
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
	{ config_id = 4001, gadget_id = 70360184, pos = { x = -3654.770, y = 151.192, z = -829.602 }, rot = { x = 0.000, y = 323.789, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	{ config_id = 4005, gadget_id = 70950134, pos = { x = -3654.770, y = 152.591, z = -829.602 }, rot = { x = 0.000, y = 31.440, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 4007, gadget_id = 70590059, pos = { x = -3658.055, y = 150.560, z = -828.181 }, rot = { x = 354.638, y = 277.648, z = 0.735 }, level = 30, persistent = true, interact_id = 60, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "VARIABLE_CHANGE_4002", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_4002", action = "action_EVENT_VARIABLE_CHANGE_4002", trigger_count = 0 },
	{ config_id = 1004003, name = "VARIABLE_CHANGE_4003", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_4003", action = "action_EVENT_VARIABLE_CHANGE_4003", trigger_count = 0 },
	{ config_id = 1004004, name = "GADGET_STATE_CHANGE_4004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4004", action = "action_EVENT_GADGET_STATE_CHANGE_4004", trigger_count = 0 },
	{ config_id = 1004008, name = "GADGET_STATE_CHANGE_4008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4008", action = "action_EVENT_GADGET_STATE_CHANGE_4008" }
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
			{ config_id = 4001, state = 202 },
			{ config_id = 4005, state = 0 },
			{ config_id = 4007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetActive", value = 0, no_refresh = true },
			{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 4001, state = 203 },
			{ config_id = 4007, state = 201 }
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
function condition_EVENT_VARIABLE_CHANGE_4002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4002(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4003(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4004(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4004(context, evt)
	-- 针对当前group内变量名为 "ActiveCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "ActiveCount", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "QuestFinish1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "QuestFinish1", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210004, EntityType.GADGET, 4005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	if 4007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	-- 通知场景上的所有玩家播放名字为321000401 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321000401, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 针对当前group内变量名为 "ActiveCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "ActiveCount", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "QuestFinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "QuestFinish1", 1, 133210027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210004, 2)
	
	return 0
end