-- 基础信息
local base_info = {
	group_id = 133307024
}

-- DEFS_MISCS
--风扇
local fans =
{
    24002
}
--沙堆
local sandpiles =
{
   24003
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
    [sandpiles[1]] = {fan = fans[1], dir_state = 204, pos = 1,}
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
	{ config_id = 24001, gadget_id = 70290610, pos = { x = -1841.196, y = 15.301, z = 5711.921 }, rot = { x = 0.000, y = 14.039, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 24002, gadget_id = 70290697, pos = { x = -1841.981, y = 26.262, z = 5712.046 }, rot = { x = 0.000, y = 106.341, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 24003, gadget_id = 70290702, pos = { x = -1860.945, y = 25.565, z = 5716.397 }, rot = { x = 0.000, y = 326.539, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- 关门
	{ config_id = 24004, gadget_id = 70330416, pos = { x = -1833.066, y = 23.540, z = 5663.473 }, rot = { x = 0.000, y = 19.446, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024006, name = "GADGET_STATE_CHANGE_24006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24006", action = "action_EVENT_GADGET_STATE_CHANGE_24006" },
	{ config_id = 1024008, name = "SELECT_OPTION_24008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24008", action = "action_EVENT_SELECT_OPTION_24008" }
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
		gadgets = { 24001, 24002, 24003, 24004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_24006", "SELECT_OPTION_24008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24006(context, evt)
	if 24003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307024, 24001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24006(context, evt)
	-- 将configid为 24001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307024, 24001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_24008(context, evt)
	-- 判断是gadgetid 24001 option_id 7
	if 24001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24008(context, evt)
	-- 将configid为 24001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 24004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133307025中， configid为25003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307025, 25003, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133307024 ；指定config：24001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307024, 24001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"