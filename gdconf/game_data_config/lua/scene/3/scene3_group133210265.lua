-- 基础信息
local base_info = {
	group_id = 133210265
}

-- Trigger变量
local defs = {
	gadget_id = 265004
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
	{ config_id = 265001, gadget_id = 70900008, pos = { x = -3561.838, y = 210.069, z = -693.227 }, rot = { x = 351.656, y = 359.701, z = 4.103 }, level = 32, persistent = true, area_id = 17 },
	{ config_id = 265002, gadget_id = 70900008, pos = { x = -3570.296, y = 208.725, z = -696.202 }, rot = { x = 349.606, y = 359.162, z = 9.192 }, level = 32, persistent = true, area_id = 17 },
	{ config_id = 265003, gadget_id = 70900008, pos = { x = -3573.136, y = 207.429, z = -701.029 }, rot = { x = 350.689, y = 359.213, z = 9.645 }, level = 32, persistent = true, area_id = 17 },
	{ config_id = 265004, gadget_id = 70211111, pos = { x = -3566.466, y = 210.479, z = -686.356 }, rot = { x = 2.144, y = 164.687, z = 354.469 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1265005, name = "VARIABLE_CHANGE_265005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_265005", action = "action_EVENT_VARIABLE_CHANGE_265005" },
	{ config_id = 1265006, name = "GADGET_STATE_CHANGE_265006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265006", action = "action_EVENT_GADGET_STATE_CHANGE_265006", trigger_count = 0 },
	{ config_id = 1265007, name = "GADGET_STATE_CHANGE_265007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265007", action = "action_EVENT_GADGET_STATE_CHANGE_265007", trigger_count = 0 },
	{ config_id = 1265008, name = "GADGET_STATE_CHANGE_265008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265008", action = "action_EVENT_GADGET_STATE_CHANGE_265008", trigger_count = 0 },
	{ config_id = 1265009, name = "GADGET_STATE_CHANGE_265009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265009", action = "action_EVENT_GADGET_STATE_CHANGE_265009", trigger_count = 0 },
	{ config_id = 1265010, name = "GADGET_STATE_CHANGE_265010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265010", action = "action_EVENT_GADGET_STATE_CHANGE_265010", trigger_count = 0 },
	{ config_id = 1265011, name = "GADGET_STATE_CHANGE_265011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265011", action = "action_EVENT_GADGET_STATE_CHANGE_265011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 265001, state = 0 },
			{ config_id = 265002, state = 0 },
			{ config_id = 265003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_265005", "GADGET_STATE_CHANGE_265006", "GADGET_STATE_CHANGE_265007", "GADGET_STATE_CHANGE_265008", "GADGET_STATE_CHANGE_265009", "GADGET_STATE_CHANGE_265010", "GADGET_STATE_CHANGE_265011" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 265001, state = 201 },
			{ config_id = 265002, state = 201 },
			{ config_id = 265003, state = 201 },
			{ config_id = 265004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 3, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_265005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为3
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_265005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210265, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265006(context, evt)
	-- 检测config_id为265001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 265001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265006(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265007(context, evt)
	-- 检测config_id为265002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 265002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265007(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265008(context, evt)
	-- 检测config_id为265003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 265003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265008(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265009(context, evt)
	-- 检测config_id为265001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 265001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265009(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265010(context, evt)
	-- 检测config_id为265002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 265002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265010(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265011(context, evt)
	-- 检测config_id为265003的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 265003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265011(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end