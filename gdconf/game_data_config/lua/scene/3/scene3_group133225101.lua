-- 基础信息
local base_info = {
	group_id = 133225101
}

-- DEFS_MISCS
defs = {
        group_id = 133225101,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = true, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
        },
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
	{ config_id = 101001, gadget_id = 70290160, pos = { x = -6277.174, y = 230.752, z = -2854.198 }, rot = { x = 0.000, y = 264.767, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 101002, gadget_id = 70900008, pos = { x = -6269.756, y = 228.698, z = -2858.296 }, rot = { x = 7.192, y = 0.000, z = 346.217 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 101003, gadget_id = 70900402, pos = { x = -6281.063, y = 230.675, z = -2856.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 101004, gadget_id = 70900008, pos = { x = -6279.178, y = 229.481, z = -2860.999 }, rot = { x = 347.921, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 101005, gadget_id = 70900402, pos = { x = -6272.972, y = 229.904, z = -2853.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 101011, gadget_id = 70211001, pos = { x = -6276.714, y = 229.615, z = -2860.226 }, rot = { x = 9.214, y = 183.703, z = 357.023 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 101016, gadget_id = 70211150, pos = { x = -6274.442, y = 229.666, z = -2860.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21910034, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101006, name = "GADGET_STATE_CHANGE_101006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101006", action = "action_EVENT_GADGET_STATE_CHANGE_101006" },
	{ config_id = 1101007, name = "GADGET_STATE_CHANGE_101007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101007", action = "action_EVENT_GADGET_STATE_CHANGE_101007" },
	{ config_id = 1101008, name = "GADGET_STATE_CHANGE_101008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101008", action = "action_EVENT_GADGET_STATE_CHANGE_101008" },
	{ config_id = 1101009, name = "GADGET_STATE_CHANGE_101009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101009", action = "action_EVENT_GADGET_STATE_CHANGE_101009" },
	-- 完成，雕像熄灭
	{ config_id = 1101010, name = "VARIABLE_CHANGE_101010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_101010", action = "action_EVENT_VARIABLE_CHANGE_101010" },
	{ config_id = 1101012, name = "VARIABLE_CHANGE_101012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_101012", action = "action_EVENT_VARIABLE_CHANGE_101012" },
	-- 使用后重置D1方碑
	{ config_id = 1101013, name = "VARIABLE_CHANGE_101013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_101013", action = "action_EVENT_VARIABLE_CHANGE_101013", trigger_count = 0 },
	{ config_id = 1101014, name = "GADGET_STATE_CHANGE_101014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101014", action = "action_EVENT_GADGET_STATE_CHANGE_101014" },
	{ config_id = 1101015, name = "GADGET_STATE_CHANGE_101015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101015", action = "action_EVENT_GADGET_STATE_CHANGE_101015" },
	-- 完成后移除
	{ config_id = 1101017, name = "GROUP_LOAD_101017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101017", action = "action_EVENT_GROUP_LOAD_101017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 3, name = "D1_count", value = 0, no_refresh = true },
	{ config_id = 4, name = "D2_count", value = 0, no_refresh = true },
	{ config_id = 5, name = "trigger", value = 0, no_refresh = true }
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
		gadgets = { 101001, 101002, 101004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101006", "GADGET_STATE_CHANGE_101007", "VARIABLE_CHANGE_101012", "VARIABLE_CHANGE_101013", "GROUP_LOAD_101017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 101003, 101005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101008", "GADGET_STATE_CHANGE_101009", "VARIABLE_CHANGE_101010", "GADGET_STATE_CHANGE_101014", "GADGET_STATE_CHANGE_101015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
	if 101002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
	-- 针对当前group内变量名为 "D1_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D1_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	if 101004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	-- 针对当前group内变量名为 "D1_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D1_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101008(context, evt)
	if 101003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101008(context, evt)
	-- 针对当前group内变量名为 "D2_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D2_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101009(context, evt)
	if 101005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101009(context, evt)
	-- 针对当前group内变量名为 "D2_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D2_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"D2_count"为4
	if ScriptLib.GetGroupVariableValue(context, "D2_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101010(context, evt)
	-- 创建id为101016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 101001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"D1_count"为2
	if ScriptLib.GetGroupVariableValue(context, "D1_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101012(context, evt)
	-- 创建id为101011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 101001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	-- 判断变量"trigger"为0
	if ScriptLib.GetGroupVariableValue(context, "trigger") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101013(context, evt)
	-- 将本组内变量名为 "trigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 101004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101014(context, evt)
	if 101002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101014(context, evt)
	-- 针对当前group内变量名为 "D2_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D2_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101015(context, evt)
	if 101004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101015(context, evt)
	-- 针对当前group内变量名为 "D2_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D2_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_101017(context, evt)
	-- 判断变量"D2_count"为4
	if ScriptLib.GetGroupVariableValue(context, "D2_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101017(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225101, 2)
	
	return 0
end

require "V2_2/TsurumiBirdFather"