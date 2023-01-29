-- 基础信息
local base_info = {
	group_id = 133307017
}

-- DEFS_MISCS
--风扇
local fans =
{
    17003,
    17004
}
--沙堆
local sandpiles =
{
    17009,
    17010,
    17011  
}
--百叶窗
local shutters =
{
    17006
}
--百叶窗开关
local shutter_switches =
{
    17007
}
--每个风扇对应点阵
local FanToPointArray =
{
   
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 202, pos = 1},
    [sandpiles[2]] = {fan = fans[2], dir_state = 202, pos = 1},
    [sandpiles[3]] = {fan = fans[2], dir_state = 201, pos = 1}
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
	-- 核心
	{ config_id = 17001, gadget_id = 70290610, pos = { x = -1802.793, y = 37.522, z = 5542.146 }, rot = { x = 0.000, y = 16.295, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 左侧风扇
	{ config_id = 17003, gadget_id = 70290697, pos = { x = -1780.950, y = 37.522, z = 5518.865 }, rot = { x = 0.000, y = 284.162, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 右侧
	{ config_id = 17004, gadget_id = 70290697, pos = { x = -1798.430, y = 37.522, z = 5559.002 }, rot = { x = 0.000, y = 287.293, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 左侧大门
	{ config_id = 17005, gadget_id = 70330416, pos = { x = -1793.484, y = 37.600, z = 5522.040 }, rot = { x = 0.000, y = 105.299, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 右侧
	{ config_id = 17006, gadget_id = 70290756, pos = { x = -1799.898, y = 37.679, z = 5553.496 }, rot = { x = 0.000, y = 17.268, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 右侧
	{ config_id = 17007, gadget_id = 70290757, pos = { x = -1805.063, y = 37.522, z = 5560.181 }, rot = { x = 0.000, y = 12.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 左侧开关
	{ config_id = 17008, gadget_id = 70330333, pos = { x = -1790.738, y = 37.522, z = 5517.113 }, rot = { x = 0.000, y = 16.420, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 左侧开门沙堆
	{ config_id = 17009, gadget_id = 70290702, pos = { x = -1794.569, y = 37.171, z = 5518.288 }, rot = { x = 0.000, y = 236.267, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- 右侧开关沙堆
	{ config_id = 17010, gadget_id = 70290703, pos = { x = -1805.683, y = 36.655, z = 5560.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- 核心沙堆
	{ config_id = 17011, gadget_id = 70290703, pos = { x = -1802.949, y = 37.223, z = 5543.101 }, rot = { x = 0.000, y = 321.012, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- 赤王关门
	{ config_id = 17012, gadget_id = 70330416, pos = { x = -1753.636, y = 35.446, z = 5529.117 }, rot = { x = 0.000, y = 283.240, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 左侧开门逻辑
	{ config_id = 1017002, name = "GADGET_STATE_CHANGE_17002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17002", action = "action_EVENT_GADGET_STATE_CHANGE_17002", trigger_count = 0 },
	-- 左侧开门逻辑
	{ config_id = 1017013, name = "SELECT_OPTION_17013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17013", action = "action_EVENT_SELECT_OPTION_17013", trigger_count = 0 },
	-- 右侧沙堆开关逻辑
	{ config_id = 1017014, name = "GADGET_STATE_CHANGE_17014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17014", action = "action_EVENT_GADGET_STATE_CHANGE_17014", trigger_count = 0 },
	-- 右侧沙堆开关大风扇
	{ config_id = 1017015, name = "GADGET_STATE_CHANGE_17015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17015", action = "action_EVENT_GADGET_STATE_CHANGE_17015", trigger_count = 0 },
	-- 右侧核心开关逻辑
	{ config_id = 1017016, name = "SELECT_OPTION_17016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17016", action = "action_EVENT_SELECT_OPTION_17016", trigger_count = 0 }
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
		gadgets = { 17001, 17003, 17004, 17005, 17006, 17007, 17008, 17009, 17010, 17011, 17012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_17002", "SELECT_OPTION_17013", "GADGET_STATE_CHANGE_17014", "GADGET_STATE_CHANGE_17015", "SELECT_OPTION_17016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17002(context, evt)
	if 17009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17002(context, evt)
	-- 将configid为 17008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307017, 17008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17013(context, evt)
	-- 判断是gadgetid 17008 option_id 7
	if 17008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17013(context, evt)
	-- 将configid为 17008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 17005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307017 ；指定config：17008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307017, 17008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17014(context, evt)
	if 17010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17014(context, evt)
	-- 将configid为 17007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17015(context, evt)
	if 17011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17015(context, evt)
	-- 将configid为 17001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307017, 17001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17016(context, evt)
	-- 判断是gadgetid 17001 option_id 7
	if 17001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17016(context, evt)
	-- 将configid为 17001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 17012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133307019中， configid为19005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307019, 19005, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133307018中， configid为18004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307018, 18004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133307017 ；指定config：17001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307017, 17001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"