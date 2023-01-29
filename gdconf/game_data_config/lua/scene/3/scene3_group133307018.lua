-- 基础信息
local base_info = {
	group_id = 133307018
}

-- DEFS_MISCS
--风扇
local fans =
{
    18006
}
--沙堆
local sandpiles =
{
    18005
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
    [sandpiles[1]] = {fan = fans[1], dir_state = 204, pos = 1}
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
	{ config_id = 18001, gadget_id = 70330333, pos = { x = -1822.824, y = 34.522, z = 5509.051 }, rot = { x = 0.000, y = 20.287, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 18003, gadget_id = 70330420, pos = { x = -1828.662, y = 33.985, z = 5504.608 }, rot = { x = 0.000, y = 287.239, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 18004, gadget_id = 70330333, pos = { x = -1813.987, y = 37.527, z = 5525.621 }, rot = { x = 0.000, y = 16.164, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 18005, gadget_id = 70290702, pos = { x = -1824.067, y = 34.252, z = 5511.167 }, rot = { x = 0.000, y = 144.436, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	{ config_id = 18006, gadget_id = 70290697, pos = { x = -1806.791, y = 34.522, z = 5504.932 }, rot = { x = 0.000, y = 105.151, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 18007, gadget_id = 70330416, pos = { x = -1808.960, y = 37.577, z = 5519.735 }, rot = { x = 0.000, y = 13.708, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 外面开门
	{ config_id = 1018002, name = "GADGET_STATE_CHANGE_18002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18002", action = "action_EVENT_GADGET_STATE_CHANGE_18002", trigger_count = 0 },
	-- 外面开门
	{ config_id = 1018008, name = "SELECT_OPTION_18008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18008", action = "action_EVENT_SELECT_OPTION_18008", trigger_count = 0 },
	-- 风扇开门
	{ config_id = 1018009, name = "GADGET_STATE_CHANGE_18009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18009", action = "action_EVENT_GADGET_STATE_CHANGE_18009", trigger_count = 0 },
	-- 风扇开门
	{ config_id = 1018010, name = "SELECT_OPTION_18010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18010", action = "action_EVENT_SELECT_OPTION_18010", trigger_count = 0 }
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
		gadgets = { 18001, 18003, 18004, 18005, 18006, 18007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_18002", "SELECT_OPTION_18008", "GADGET_STATE_CHANGE_18009", "SELECT_OPTION_18010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18002(context, evt)
	-- 检测config_id为18004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 18004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307018, 18004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18008(context, evt)
	-- 判断是gadgetid 18004 option_id 7
	if 18004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18008(context, evt)
	-- 将configid为 18004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 18007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307018 ；指定config：18004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307018, 18004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18009(context, evt)
	if 18005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18009(context, evt)
	-- 将configid为 18001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307018, 18001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18010(context, evt)
	-- 判断是gadgetid 18001 option_id 7
	if 18001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7321916)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18010(context, evt)
	-- 将configid为 18001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 18003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307018 ；指定config：18001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307018, 18001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"