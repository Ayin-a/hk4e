-- 基础信息
local base_info = {
	group_id = 111101026
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
	{ config_id = 26001, gadget_id = 70310001, pos = { x = 2305.789, y = 275.464, z = -1646.839 }, rot = { x = 4.144, y = 359.948, z = 358.551 }, level = 1 },
	{ config_id = 26002, gadget_id = 70310001, pos = { x = 2301.885, y = 277.280, z = -1647.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 26003, gadget_id = 70310001, pos = { x = 2308.072, y = 275.318, z = -1643.205 }, rot = { x = 357.124, y = 0.050, z = 358.003 }, level = 1 },
	{ config_id = 26004, gadget_id = 70310001, pos = { x = 2308.104, y = 275.469, z = -1648.676 }, rot = { x = 357.838, y = 0.027, z = 358.579 }, level = 1 },
	{ config_id = 26005, gadget_id = 70310001, pos = { x = 2310.169, y = 275.170, z = -1645.448 }, rot = { x = 4.864, y = 359.954, z = 358.925 }, level = 1 },
	{ config_id = 26017, gadget_id = 70211001, pos = { x = 2308.019, y = 275.307, z = -1645.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1火把点燃增加
	{ config_id = 1026006, name = "GADGET_STATE_CHANGE_26006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26006", action = "action_EVENT_GADGET_STATE_CHANGE_26006", trigger_count = 0 },
	-- 2火把点燃增加
	{ config_id = 1026007, name = "GADGET_STATE_CHANGE_26007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26007", action = "action_EVENT_GADGET_STATE_CHANGE_26007", trigger_count = 0 },
	-- 3火把点燃增加
	{ config_id = 1026008, name = "GADGET_STATE_CHANGE_26008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26008", action = "action_EVENT_GADGET_STATE_CHANGE_26008", trigger_count = 0 },
	-- 4火把点燃增加
	{ config_id = 1026009, name = "GADGET_STATE_CHANGE_26009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26009", action = "action_EVENT_GADGET_STATE_CHANGE_26009", trigger_count = 0 },
	-- 5火把点燃增加
	{ config_id = 1026010, name = "GADGET_STATE_CHANGE_26010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26010", action = "action_EVENT_GADGET_STATE_CHANGE_26010", trigger_count = 0 },
	-- 1火把熄灭减少
	{ config_id = 1026011, name = "GADGET_STATE_CHANGE_26011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26011", action = "action_EVENT_GADGET_STATE_CHANGE_26011", trigger_count = 0 },
	-- 2火把熄灭减少
	{ config_id = 1026012, name = "GADGET_STATE_CHANGE_26012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26012", action = "action_EVENT_GADGET_STATE_CHANGE_26012", trigger_count = 0 },
	-- 3火把熄灭减少
	{ config_id = 1026013, name = "GADGET_STATE_CHANGE_26013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26013", action = "action_EVENT_GADGET_STATE_CHANGE_26013", trigger_count = 0 },
	-- 4火把熄灭减少
	{ config_id = 1026014, name = "GADGET_STATE_CHANGE_26014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26014", action = "action_EVENT_GADGET_STATE_CHANGE_26014", trigger_count = 0 },
	-- 5火把熄灭减少
	{ config_id = 1026015, name = "GADGET_STATE_CHANGE_26015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26015", action = "action_EVENT_GADGET_STATE_CHANGE_26015", trigger_count = 0 },
	{ config_id = 1026016, name = "VARIABLE_CHANGE_26016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_26016", action = "action_EVENT_VARIABLE_CHANGE_26016", trigger_count = 0 },
	-- 开箱子解锁D区域
	{ config_id = 1026018, name = "GADGET_STATE_CHANGE_26018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26018", action = "action_EVENT_GADGET_STATE_CHANGE_26018" }
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
		gadgets = { 26001, 26002, 26003, 26004, 26005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_26006", "GADGET_STATE_CHANGE_26007", "GADGET_STATE_CHANGE_26008", "GADGET_STATE_CHANGE_26009", "GADGET_STATE_CHANGE_26010", "GADGET_STATE_CHANGE_26011", "GADGET_STATE_CHANGE_26012", "GADGET_STATE_CHANGE_26013", "GADGET_STATE_CHANGE_26014", "GADGET_STATE_CHANGE_26015", "VARIABLE_CHANGE_26016", "GADGET_STATE_CHANGE_26018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26006(context, evt)
	-- 检测config_id为26001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 26001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26007(context, evt)
	-- 检测config_id为26002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 26002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26008(context, evt)
	-- 检测config_id为26003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 26003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26009(context, evt)
	-- 检测config_id为26003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 26003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26010(context, evt)
	-- 检测config_id为26005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 26005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26010(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26011(context, evt)
	-- 检测config_id为26001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 26001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26012(context, evt)
	-- 检测config_id为26002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 26002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26012(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26013(context, evt)
	-- 检测config_id为26003的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 26003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26013(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26014(context, evt)
	-- 检测config_id为26004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 26004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26014(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26015(context, evt)
	-- 检测config_id为26005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 26005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26015(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_26016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_26016(context, evt)
	-- 创建id为26017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 26017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26018(context, evt)
	-- 检测config_id为26017的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 26017 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26018(context, evt)
	-- 改变指定group组111101029中， configid为29003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101029, 29003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "open3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open3", 1, 111101029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end