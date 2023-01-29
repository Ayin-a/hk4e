-- 基础信息
local base_info = {
	group_id = 133313223
}

-- DEFS_MISCS
--风扇
local fans =
{
    223001
}
--沙堆
local sandpiles =
{
    223002,
    223005
}
--百叶窗
local shutters =
{

}
--百叶窗开关
local shutter_switches =
{

}

--移动点阵
local FanToPointArray =
{
    [fans[1]] = 331300006
}

--风扇与沙堆映射
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 202, pos = 1},
    [sandpiles[2]] = {fan = fans[1], dir_state = 204, pos = 2},

}

--百叶窗与开关映射
local SwitchToShutter =
{

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 223016, monster_id = 26090901, pos = { x = -425.818, y = -73.549, z = 5522.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 223017, monster_id = 26090901, pos = { x = -424.416, y = -73.672, z = 5523.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 223001, gadget_id = 70290697, pos = { x = -426.019, y = -73.267, z = 5515.687 }, rot = { x = -0.001, y = 0.043, z = 0.044 }, level = 32, state = GadgetState.GearAction1, persistent = true, is_use_point_array = true, area_id = 32 },
	{ config_id = 223002, gadget_id = 70290703, pos = { x = -427.706, y = -73.571, z = 5523.447 }, rot = { x = 0.000, y = 125.960, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 223003, gadget_id = 70290763, pos = { x = -414.479, y = -73.869, z = 5515.681 }, rot = { x = 0.000, y = 270.625, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 223004, gadget_id = 70290763, pos = { x = -424.387, y = -73.872, z = 5515.692 }, rot = { x = 0.000, y = 89.771, z = 0.000 }, level = 32, area_id = 32 },
	-- 2
	{ config_id = 223005, gadget_id = 70290702, pos = { x = -409.968, y = -73.817, z = 5505.320 }, rot = { x = 358.910, y = 304.385, z = 358.610 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 223006, gadget_id = 70330416, pos = { x = -407.100, y = -73.192, z = 5508.883 }, rot = { x = 0.000, y = 270.553, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 操作大门
	{ config_id = 223007, gadget_id = 70330333, pos = { x = -412.474, y = -73.597, z = 5505.249 }, rot = { x = 0.000, y = 226.595, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	{ config_id = 223014, gadget_id = 70290699, pos = { x = -419.418, y = -73.857, z = 5515.702 }, rot = { x = 0.000, y = 269.867, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 沙堆1死亡
	{ config_id = 1223008, name = "GADGET_STATE_CHANGE_223008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223008", action = "action_EVENT_GADGET_STATE_CHANGE_223008" },
	-- 沙堆2死亡
	{ config_id = 1223009, name = "GADGET_STATE_CHANGE_223009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223009", action = "action_EVENT_GADGET_STATE_CHANGE_223009" },
	-- 关闭风扇
	{ config_id = 1223010, name = "SELECT_OPTION_223010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_223010", action = "action_EVENT_SELECT_OPTION_223010", trigger_count = 0 },
	-- 关闭机关重登保底
	{ config_id = 1223011, name = "GROUP_LOAD_223011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_223011", action = "action_EVENT_GROUP_LOAD_223011", trigger_count = 0 },
	-- 重登机关上选项
	{ config_id = 1223012, name = "GADGET_CREATE_223012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_223012", action = "action_EVENT_GADGET_CREATE_223012", trigger_count = 0 },
	-- 沙堆1死亡保底
	{ config_id = 1223013, name = "GROUP_LOAD_223013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_223013", action = "", trigger_count = 0 },
	-- 开门保底
	{ config_id = 1223015, name = "GROUP_LOAD_223015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_223015", action = "action_EVENT_GROUP_LOAD_223015", trigger_count = 0 },
	{ config_id = 1223018, name = "SELECT_OPTION_223018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_223018", action = "action_EVENT_SELECT_OPTION_223018", trigger_count = 0 }
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
		gadgets = { 223001, 223002, 223003, 223004, 223005, 223006, 223007, 223014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_223008", "GADGET_STATE_CHANGE_223009", "SELECT_OPTION_223010", "GROUP_LOAD_223011", "GADGET_CREATE_223012", "GROUP_LOAD_223013", "GROUP_LOAD_223015", "SELECT_OPTION_223018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 223016, 223017 },
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

-- 设置指定group中指定gadget的state
function TLA_set_gadget_state_by_groupid_configid(context, evt, config_id, group_id, state)
	-- 改变指定group组group_id中， configid为config_id的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, state) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	return 0
end

-- 设置此group的variable
function TLA_set_groupvariable(context, evt, variable_name, value)
	-- 将本组内变量名为 variable_name 的变量设置为 value
	if 0 ~= ScriptLib.SetGroupVariableValue(context, variable_name, value) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	if 223002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313223, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223009(context, evt)
	if 223005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223009(context, evt)
	-- 将configid为 223007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313223, 223007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_223010(context, evt)
	-- 判断是gadgetid 223007 option_id 439
	if 223007 ~= evt.param1 then
		return false	
	end
	
	if 439 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_223010(context, evt)
	TLA_set_groupvariable(context, evt, "open", 1)
	
	TLA_set_gadget_state_by_groupid_configid(context, evt, 223007, 133313223, GadgetState.GearStart)
	
	TLA_set_gadget_state_by_groupid_configid(context, evt, 223006, 133313223, GadgetState.GearStart)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 133313223, 223007, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_223011(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133313223, 223007) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313223, 223005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_223011(context, evt)
	-- 将configid为 223007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313223, 223007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_223012(context, evt)
	if 223007 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_223012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313223, 223007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_223013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313223, 223002) then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_223015(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_223015(context, evt)
	-- 将configid为 223006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 223007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_223018(context, evt)
	-- 判断是gadgetid 223007 option_id 7
	if 223007 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_223018(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 223006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 223007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313223 ；指定config：223007；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313223, 223007, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"