-- 基础信息
local base_info = {
	group_id = 133307012
}

-- DEFS_MISCS
--风扇
local fans =
{
    12003
}
--沙堆
local sandpiles =
{
    12007,
    12009  
}
--百叶窗
local shutters =
{

}
--百叶窗开关
local shutter_switches =
{

}
--每个风扇对应点阵
local FanToPointArray =
{
   
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 201, pos = 1},
    [sandpiles[2]] = {fan = fans[1], dir_state = 203, pos = 1}
}

--百叶窗开关和百叶窗对应
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12001, gadget_id = 70290610, pos = { x = -1681.979, y = 19.878, z = 5655.881 }, rot = { x = 0.000, y = 18.389, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 12003, gadget_id = 70290698, pos = { x = -1712.723, y = 19.824, z = 5656.907 }, rot = { x = 0.000, y = 19.051, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 12007, gadget_id = 70290700, pos = { x = -1710.318, y = 17.800, z = 5664.521 }, rot = { x = 0.000, y = 146.707, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	-- 门b
	{ config_id = 12008, gadget_id = 70330333, pos = { x = -1726.274, y = 23.600, z = 5622.543 }, rot = { x = 0.000, y = 12.892, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	-- 门b
	{ config_id = 12009, gadget_id = 70290702, pos = { x = -1725.084, y = 23.071, z = 5617.943 }, rot = { x = 0.484, y = 189.066, z = 1.082 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	-- 门b
	{ config_id = 12010, gadget_id = 70330416, pos = { x = -1723.025, y = 23.352, z = 5618.423 }, rot = { x = 0.000, y = 17.506, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 风扇开关
	{ config_id = 1012002, name = "QUEST_START_12002", event = EventType.EVENT_QUEST_START, source = "7321910", condition = "condition_EVENT_QUEST_START_12002", action = "action_EVENT_QUEST_START_12002", trigger_count = 0 },
	-- 风扇开关保底
	{ config_id = 1012004, name = "GADGET_CREATE_12004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12004", action = "action_EVENT_GADGET_CREATE_12004", trigger_count = 0 },
	-- 风扇开关
	{ config_id = 1012005, name = "SELECT_OPTION_12005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12005", action = "action_EVENT_SELECT_OPTION_12005", trigger_count = 0 },
	-- 风扇开关保底
	{ config_id = 1012006, name = "GROUP_LOAD_12006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12006", action = "action_EVENT_GROUP_LOAD_12006", trigger_count = 0 },
	-- B门
	{ config_id = 1012011, name = "GADGET_STATE_CHANGE_12011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "7321914", condition = "condition_EVENT_GADGET_STATE_CHANGE_12011", action = "action_EVENT_GADGET_STATE_CHANGE_12011", trigger_count = 0 },
	-- B门保底
	{ config_id = 1012012, name = "GADGET_CREATE_12012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12012", action = "action_EVENT_GADGET_CREATE_12012", trigger_count = 0 },
	-- B门
	{ config_id = 1012013, name = "SELECT_OPTION_12013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12013", action = "action_EVENT_SELECT_OPTION_12013", trigger_count = 0 },
	-- B门保底
	{ config_id = 1012014, name = "GROUP_LOAD_12014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12014", action = "action_EVENT_GROUP_LOAD_12014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = false },
	{ config_id = 2, name = "open01", value = 0, no_refresh = false }
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
		gadgets = { 12001, 12003, 12007, 12008, 12009, 12010 },
		regions = { },
		triggers = { "QUEST_START_12002", "GADGET_CREATE_12004", "SELECT_OPTION_12005", "GROUP_LOAD_12006", "GADGET_STATE_CHANGE_12011", "GADGET_CREATE_12012", "SELECT_OPTION_12013", "GROUP_LOAD_12014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_12002(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307012, 12001) then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7321910)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_12002(context, evt)
	-- 将configid为 12001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307012, 12001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12004(context, evt)
	if 12001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7321910)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307012, 12001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12005(context, evt)
	-- 判断是gadgetid 12001 option_id 7
	if 12001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12005(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 12003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307012 ；指定config：12001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307012, 12001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 12001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12006(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,12001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307012, 12009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12011(context, evt)
	-- 将configid为 12008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307012, 12007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12012(context, evt)
	if 12003 ~= evt.param1 or GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7321914)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307012, 12008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12013(context, evt)
	-- 判断是gadgetid 12008 option_id 7
	if 12008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12013(context, evt)
	-- 将本组内变量名为 "open01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 12008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307012 ；指定config：12008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307012, 12008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12014(context, evt)
	-- 判断变量"open01"为1
	if ScriptLib.GetGroupVariableValue(context, "open01") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12014(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,12001, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,12010, GadgetState.GearStart)
	
	return 0
end

require "V3_4/ScarletKingFan"