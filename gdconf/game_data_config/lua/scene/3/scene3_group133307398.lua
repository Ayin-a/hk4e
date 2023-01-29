-- 基础信息
local base_info = {
	group_id = 133307398
}

-- DEFS_MISCS
--风扇
local fans =
{
    398002
}
--沙堆
local sandpiles =
{
   398004
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
    [sandpiles[1]] = {fan = fans[1], dir_state = 201, pos = 1}
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
	{ config_id = 398001, gadget_id = 70330333, pos = { x = -1812.245, y = 19.034, z = 5721.680 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 398002, gadget_id = 70290697, pos = { x = -1821.766, y = 18.262, z = 5724.639 }, rot = { x = 0.000, y = 196.493, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	{ config_id = 398003, gadget_id = 70330416, pos = { x = -1809.953, y = 23.536, z = 5749.929 }, rot = { x = 0.000, y = 194.076, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 398004, gadget_id = 70290703, pos = { x = -1810.992, y = 18.123, z = 5722.479 }, rot = { x = 0.000, y = 354.722, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	{ config_id = 398007, gadget_id = 70290697, pos = { x = -1830.560, y = 18.262, z = 5691.637 }, rot = { x = 0.000, y = 192.998, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	{ config_id = 398008, gadget_id = 70330404, pos = { x = -1827.761, y = 18.920, z = 5703.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 398009, gadget_id = 70330404, pos = { x = -1821.157, y = 18.920, z = 5688.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 398010, gadget_id = 70330404, pos = { x = -1825.027, y = 18.920, z = 5712.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 398011, gadget_id = 70330404, pos = { x = -1846.158, y = 22.252, z = 5695.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 398012, gadget_id = 70330404, pos = { x = -1837.658, y = 22.252, z = 5728.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门
	{ config_id = 1398005, name = "SELECT_OPTION_398005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_398005", action = "action_EVENT_SELECT_OPTION_398005", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1398006, name = "GADGET_STATE_CHANGE_398006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_398006", action = "action_EVENT_GADGET_STATE_CHANGE_398006", trigger_count = 0 }
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
		gadgets = { 398001, 398002, 398003, 398004, 398007, 398008, 398009, 398010, 398011, 398012 },
		regions = { },
		triggers = { "SELECT_OPTION_398005", "GADGET_STATE_CHANGE_398006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_398005(context, evt)
	-- 判断是gadgetid 398001 option_id 7
	if 398001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_398005(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 398001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 398001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 398003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 398003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307398 ；指定config：398001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307398, 398001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_398006(context, evt)
	if 398004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_398006(context, evt)
	-- 将configid为 398001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 398001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307398, 398001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"