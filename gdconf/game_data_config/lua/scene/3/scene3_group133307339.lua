-- 基础信息
local base_info = {
	group_id = 133307339
}

-- DEFS_MISCS
--风扇
local fans =
{
    339002
}
--沙堆
local sandpiles =
{
    339004 
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
   [fans[1]] = 330700017
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 204, pos = 2}
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
	{ config_id = 339001, gadget_id = 70330333, pos = { x = -1771.085, y = 23.296, z = 5711.317 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 339002, gadget_id = 70290697, pos = { x = -1768.461, y = 23.708, z = 5734.636 }, rot = { x = 0.000, y = 14.674, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, is_use_point_array = true, area_id = 27 },
	{ config_id = 339003, gadget_id = 70330416, pos = { x = -1775.144, y = 23.469, z = 5709.733 }, rot = { x = 0.000, y = 195.508, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 339004, gadget_id = 70290702, pos = { x = -1773.262, y = 22.481, z = 5710.787 }, rot = { x = 3.895, y = 54.329, z = 2.870 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	{ config_id = 339005, gadget_id = 70290763, pos = { x = -1771.597, y = 23.097, z = 5723.273 }, rot = { x = 0.000, y = 15.555, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 339006, gadget_id = 70290763, pos = { x = -1768.953, y = 23.097, z = 5732.885 }, rot = { x = 0.000, y = 195.223, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 339007, gadget_id = 70290699, pos = { x = -1770.266, y = 23.094, z = 5728.078 }, rot = { x = 0.000, y = 15.375, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门
	{ config_id = 1339009, name = "SELECT_OPTION_339009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_339009", action = "action_EVENT_SELECT_OPTION_339009", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1339011, name = "GADGET_STATE_CHANGE_339011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_339011", action = "action_EVENT_GADGET_STATE_CHANGE_339011", trigger_count = 0 }
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
		gadgets = { 339001, 339002, 339003, 339004, 339005, 339006, 339007 },
		regions = { },
		triggers = { "SELECT_OPTION_339009", "GADGET_STATE_CHANGE_339011" },
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
function condition_EVENT_SELECT_OPTION_339009(context, evt)
	-- 判断是gadgetid 339001 option_id 7
	if 339001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_339009(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 339001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 339001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 339003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 339003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307339 ；指定config：339001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307339, 339001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_339011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307339, 339004) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307339, 339001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_339011(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,339001, GadgetState.Default)
	
	TLA_set_work_options_by_configid(context, evt, 133307339, 339001, {7})
	
	return 0
end

require "V3_4/ScarletKingFan"