-- 基础信息
local base_info = {
	group_id = 133307283
}

-- DEFS_MISCS
--风扇
local fans =
{
    283002
}
--沙堆
local sandpiles =
{
   283004
}
--百叶窗
local shutters =
{
   283009
}
--百叶窗开关
local shutter_switches =
{
   283010
}
--每个风扇对应点阵
local FanToPointArray =
{
   
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 202, pos = 1, shutter = shutters[1]}
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
	{ config_id = 283001, gadget_id = 70330333, pos = { x = -1739.628, y = 23.262, z = 5569.244 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 283002, gadget_id = 70290697, pos = { x = -1729.442, y = 23.772, z = 5596.603 }, rot = { x = 0.000, y = 195.013, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 283003, gadget_id = 70330416, pos = { x = -1736.979, y = 23.345, z = 5566.289 }, rot = { x = 0.000, y = 197.026, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 283004, gadget_id = 70290702, pos = { x = -1736.522, y = 23.216, z = 5567.789 }, rot = { x = 0.000, y = 11.590, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 283009, gadget_id = 70290756, pos = { x = -1731.272, y = 24.302, z = 5590.045 }, rot = { x = 0.000, y = 14.904, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 283010, gadget_id = 70290757, pos = { x = -1735.693, y = 23.342, z = 5594.962 }, rot = { x = 0.000, y = 109.774, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门
	{ config_id = 1283006, name = "SELECT_OPTION_283006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_283006", action = "action_EVENT_SELECT_OPTION_283006", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1283008, name = "GADGET_STATE_CHANGE_283008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_283008", action = "action_EVENT_GADGET_STATE_CHANGE_283008", trigger_count = 0 }
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
		gadgets = { 283001, 283002, 283003, 283004, 283009, 283010 },
		regions = { },
		triggers = { "SELECT_OPTION_283006", "GADGET_STATE_CHANGE_283008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_283006(context, evt)
	-- 判断是gadgetid 283001 option_id 7
	if 283001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_283006(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 283001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 283003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307283 ；指定config：283001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307283, 283001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_283008(context, evt)
	if 283004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_283008(context, evt)
	-- 将configid为 283001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307283, 283001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"