-- 基础信息
local base_info = {
	group_id = 133307328
}

-- DEFS_MISCS
--风扇
local fans =
{
    328002,
    328017,
    328022
}
--沙堆
local sandpiles =
{
   328024,
   328026,
   328025,
   328004
}
--百叶窗
local shutters =
{
   328005
}
--百叶窗开关
local shutter_switches =
{
   328006
}
--每个风扇对应点阵
local FanToPointArray =
{
   [fans[1]] = 330700014,
   [fans[2]] = 330700015,
   [fans[3]] = 330700016
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 203, pos = 1},
    [sandpiles[2]] = {fan = fans[1], dir_state = 201, pos = 2, shutter = shutters[1]},
    [sandpiles[3]] = {fan = fans[2], dir_state = 203, pos = 2},
    [sandpiles[4]] = {fan = fans[3], dir_state = 204, pos = 2}
}

--百叶窗开关和百叶窗对应
local SwitchToShutter =
{
    [shutter_switches[1]] = shutters[1]
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
	{ config_id = 328001, gadget_id = 70330333, pos = { x = -1836.447, y = 23.262, z = 5659.874 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 1号
	{ config_id = 328002, gadget_id = 70290697, pos = { x = -1817.926, y = 23.722, z = 5630.238 }, rot = { x = 0.000, y = 16.255, z = 0.000 }, level = 32, state = GadgetState.ChestOpened, persistent = true, is_use_point_array = true, area_id = 27 },
	{ config_id = 328003, gadget_id = 70330416, pos = { x = -1833.187, y = 23.535, z = 5663.186 }, rot = { x = 0.000, y = 195.022, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 开门三号大沙堆
	{ config_id = 328004, gadget_id = 70290702, pos = { x = -1833.947, y = 22.885, z = 5664.037 }, rot = { x = 0.000, y = 338.599, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- 1号
	{ config_id = 328005, gadget_id = 70290756, pos = { x = -1825.801, y = 23.598, z = 5623.458 }, rot = { x = 0.000, y = 106.391, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 1号
	{ config_id = 328006, gadget_id = 70290757, pos = { x = -1809.556, y = 23.262, z = 5629.271 }, rot = { x = 0.000, y = 107.236, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 1号
	{ config_id = 328007, gadget_id = 70290763, pos = { x = -1819.677, y = 23.122, z = 5623.666 }, rot = { x = 0.000, y = 14.478, z = 0.000 }, level = 32, area_id = 27 },
	-- 1号
	{ config_id = 328008, gadget_id = 70290763, pos = { x = -1818.429, y = 23.117, z = 5628.495 }, rot = { x = 0.000, y = 194.611, z = 0.000 }, level = 32, area_id = 27 },
	-- 2号
	{ config_id = 328017, gadget_id = 70290697, pos = { x = -1833.249, y = 23.686, z = 5625.587 }, rot = { x = 0.000, y = 193.091, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, area_id = 27 },
	-- 2号
	{ config_id = 328018, gadget_id = 70290763, pos = { x = -1832.802, y = 23.081, z = 5627.371 }, rot = { x = 0.000, y = 14.478, z = 0.000 }, level = 32, area_id = 27 },
	-- 2号
	{ config_id = 328019, gadget_id = 70290763, pos = { x = -1831.553, y = 23.081, z = 5632.200 }, rot = { x = 0.000, y = 194.611, z = 0.000 }, level = 32, area_id = 27 },
	-- 开门3号
	{ config_id = 328020, gadget_id = 70290763, pos = { x = -1840.539, y = 23.101, z = 5638.289 }, rot = { x = 0.000, y = 14.478, z = 0.000 }, level = 32, area_id = 27 },
	-- 开门3号
	{ config_id = 328021, gadget_id = 70290763, pos = { x = -1838.049, y = 23.101, z = 5647.906 }, rot = { x = 0.000, y = 194.611, z = 0.000 }, level = 32, area_id = 27 },
	-- 开门3号
	{ config_id = 328022, gadget_id = 70290697, pos = { x = -1840.986, y = 23.706, z = 5636.504 }, rot = { x = 0.000, y = 195.838, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, area_id = 27 },
	-- 开门3号
	{ config_id = 328023, gadget_id = 70290699, pos = { x = -1839.296, y = 23.108, z = 5643.087 }, rot = { x = 0.000, y = 14.495, z = 0.000 }, level = 32, area_id = 27 },
	-- 1号
	{ config_id = 328024, gadget_id = 70290703, pos = { x = -1808.305, y = 22.466, z = 5628.527 }, rot = { x = 0.000, y = 189.184, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- 开门3号
	{ config_id = 328025, gadget_id = 70290703, pos = { x = -1841.181, y = 23.276, z = 5637.081 }, rot = { x = 0.000, y = 304.577, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- 2号
	{ config_id = 328026, gadget_id = 70290703, pos = { x = -1833.214, y = 23.135, z = 5624.765 }, rot = { x = 0.000, y = 22.215, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 百叶窗开关开启
	{ config_id = 1328009, name = "GADGET_STATE_CHANGE_328009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328009", action = "action_EVENT_GADGET_STATE_CHANGE_328009" },
	-- 2号风扇开启
	{ config_id = 1328010, name = "GADGET_STATE_CHANGE_328010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328010", action = "action_EVENT_GADGET_STATE_CHANGE_328010" },
	-- 开门
	{ config_id = 1328011, name = "SELECT_OPTION_328011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_328011", action = "action_EVENT_SELECT_OPTION_328011", trigger_count = 0 },
	-- 3号风扇开启
	{ config_id = 1328012, name = "GADGET_STATE_CHANGE_328012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328012", action = "action_EVENT_GADGET_STATE_CHANGE_328012" },
	-- 玩法开始
	{ config_id = 1328013, name = "GADGET_STATE_CHANGE_328013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328013", action = "action_EVENT_GADGET_STATE_CHANGE_328013", trigger_count = 0 }
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
		gadgets = { 328001, 328002, 328003, 328004, 328005, 328006, 328007, 328008, 328017, 328018, 328019, 328020, 328021, 328022, 328023, 328024, 328025, 328026 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_328009", "GADGET_STATE_CHANGE_328010", "SELECT_OPTION_328011", "GADGET_STATE_CHANGE_328012", "GADGET_STATE_CHANGE_328013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置指定group的操作台与option
function TLA_set_work_options_by_configid(context, evt, group_id, config_id, gear_id)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, group_id, config_id, gear_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328009(context, evt)
	if 328024 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328009(context, evt)
	-- 将configid为 328006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328010(context, evt)
	if 328026 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328010(context, evt)
	-- 将configid为 328017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_328011(context, evt)
	-- 判断是gadgetid 328001 option_id 7
	if 328001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_328011(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 328001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 328003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307328 ；指定config：328001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307328, 328001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328012(context, evt)
	if 328025 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328012(context, evt)
	-- 将configid为 328022 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328022, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307328, 328004) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307328, 328001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328013(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,328001, GadgetState.Default)
	
	TLA_set_work_options_by_configid(context, evt, 133307328, 328001, {7})
	
	return 0
end

require "V3_4/ScarletKingFan"