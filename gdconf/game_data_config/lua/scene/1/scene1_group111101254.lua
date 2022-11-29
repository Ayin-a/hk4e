-- 基础信息
local base_info = {
	group_id = 111101254
}

-- DEFS_MISCS
local EnvControlGadgets = {254001,254002,254003,254004}
local DayAppearGadgets = {}
local NightAppearGadgets = {}
local Worktops = {254003,254004}

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
	{ config_id = 254001, gadget_id = 70360305, pos = { x = 2751.129, y = 269.490, z = -1460.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 254002, gadget_id = 70360309, pos = { x = 2741.504, y = 269.688, z = -1462.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 254003, gadget_id = 70360311, pos = { x = 2751.290, y = 270.434, z = -1465.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 254004, gadget_id = 70360312, pos = { x = 2741.505, y = 270.967, z = -1466.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 254011, gadget_id = 70211001, pos = { x = 2746.178, y = 269.176, z = -1459.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254005, name = "GADGET_STATE_CHANGE_254005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254005", action = "action_EVENT_GADGET_STATE_CHANGE_254005", trigger_count = 0 },
	{ config_id = 1254006, name = "GADGET_STATE_CHANGE_254006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254006", action = "action_EVENT_GADGET_STATE_CHANGE_254006", trigger_count = 0 },
	{ config_id = 1254007, name = "VARIABLE_CHANGE_254007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_254007", action = "action_EVENT_VARIABLE_CHANGE_254007", trigger_count = 0 },
	{ config_id = 1254008, name = "GADGET_STATE_CHANGE_254008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254008", action = "action_EVENT_GADGET_STATE_CHANGE_254008", trigger_count = 0 },
	{ config_id = 1254009, name = "GADGET_STATE_CHANGE_254009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254009", action = "action_EVENT_GADGET_STATE_CHANGE_254009", trigger_count = 0 },
	{ config_id = 1254010, name = "VARIABLE_CHANGE_254010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_254010", action = "action_EVENT_VARIABLE_CHANGE_254010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Trigger_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "Trigger_2", value = 0, no_refresh = true },
	{ config_id = 3, name = "Trigger_3", value = 0, no_refresh = true },
	{ config_id = 4, name = "Trigger_4", value = 0, no_refresh = true }
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
			{ config_id = 254001, state = 0 },
			{ config_id = 254002, state = 0 },
			{ config_id = 254003, state = 202 },
			{ config_id = 254004, state = 202 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_254005", "GADGET_STATE_CHANGE_254006", "VARIABLE_CHANGE_254007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Trigger_1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Trigger_2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Trigger_3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Trigger_4", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 254001, state = 202 },
			{ config_id = 254002, state = 202 },
			{ config_id = 254003, state = 201 },
			{ config_id = 254004, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_254008", "GADGET_STATE_CHANGE_254009", "VARIABLE_CHANGE_254010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Trigger_1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Trigger_2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Trigger_3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Trigger_4", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 254001, state = 201 },
			{ config_id = 254002, state = 201 },
			{ config_id = 254003, state = 201 },
			{ config_id = 254004, state = 201 },
			{ config_id = 254011, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Trigger_1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Trigger_2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Trigger_3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Trigger_4", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254005(context, evt)
	if 254004 ~= evt.param2 or 312 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254005(context, evt)
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (254002 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,254002,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,254002,302)
	end
	
	
	-- 将本组内变量名为 "Trigger_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Trigger_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254006(context, evt)
	if 254003 ~= evt.param2 or 212 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254006(context, evt)
	-- 将configid为 254001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 254001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Trigger_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Trigger_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_254007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Trigger_1"为1
	if ScriptLib.GetGroupVariableValue(context, "Trigger_1") ~= 1 then
			return false
	end
	
	-- 判断变量"Trigger_2"为1
	if ScriptLib.GetGroupVariableValue(context, "Trigger_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_254007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 111101254, 2)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 111101254, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254008(context, evt)
	if 254001 ~= evt.param2 or 222 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254008(context, evt)
	-- 将本组内变量名为 "Trigger_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Trigger_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254009(context, evt)
	if 254002 ~= evt.param2 or 322 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254009(context, evt)
	-- 将本组内变量名为 "Trigger_4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Trigger_4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_254010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Trigger_3"为1
	if ScriptLib.GetGroupVariableValue(context, "Trigger_3") ~= 1 then
			return false
	end
	
	-- 判断变量"Trigger_4"为1
	if ScriptLib.GetGroupVariableValue(context, "Trigger_4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_254010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 111101254, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 111101254, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"