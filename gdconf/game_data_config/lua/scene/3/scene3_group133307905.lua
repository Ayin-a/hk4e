-- 基础信息
local base_info = {
	group_id = 133307905
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
	{ config_id = 905001, gadget_id = 70330333, pos = { x = -1675.900, y = 12.802, z = 5617.118 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 905002, gadget_id = 70290697, pos = { x = -1675.967, y = 12.802, z = 5607.298 }, rot = { x = 0.000, y = 195.013, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 905003, gadget_id = 70330416, pos = { x = -1672.849, y = 13.078, z = 5618.643 }, rot = { x = 0.000, y = 194.076, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 905004, gadget_id = 70290702, pos = { x = -1672.180, y = 12.178, z = 5619.028 }, rot = { x = 0.000, y = 6.392, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门
	{ config_id = 1905008, name = "SELECT_OPTION_905008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_905008", action = "action_EVENT_SELECT_OPTION_905008", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1905009, name = "GADGET_STATE_CHANGE_905009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_905009", action = "action_EVENT_GADGET_STATE_CHANGE_905009", trigger_count = 0 }
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
		gadgets = { 905001, 905002, 905003, 905004 },
		regions = { },
		triggers = { "SELECT_OPTION_905008", "GADGET_STATE_CHANGE_905009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_905008(context, evt)
	-- 判断是gadgetid 905001 option_id 7
	if 905001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_905008(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 905001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 905001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 905003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 905003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307905 ；指定config：905001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307905, 905001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_905009(context, evt)
	if 905004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_905009(context, evt)
	-- 将configid为 905001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 905001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307905, 905001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"