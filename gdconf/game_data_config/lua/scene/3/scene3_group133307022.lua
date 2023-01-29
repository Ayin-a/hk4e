-- 基础信息
local base_info = {
	group_id = 133307022
}

-- DEFS_MISCS
--风扇
local fans =
{
    22007
}
--沙堆
local sandpiles =
{
    22006,
    22003
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
    [sandpiles[1]] = {fan = fans[1], dir_state = 203, pos = 1},
    [sandpiles[2]] = {fan = fans[1], dir_state = 201, pos = 1}
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
	{ config_id = 22001, gadget_id = 70330404, pos = { x = -1729.622, y = 19.824, z = 5681.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- D开门
	{ config_id = 22003, gadget_id = 70290702, pos = { x = -1763.617, y = 22.831, z = 5690.000 }, rot = { x = 0.000, y = 123.733, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	-- D开门
	{ config_id = 22004, gadget_id = 70330333, pos = { x = -1761.893, y = 23.341, z = 5688.057 }, rot = { x = 0.000, y = 16.497, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	-- D开门
	{ config_id = 22005, gadget_id = 70330416, pos = { x = -1764.207, y = 23.398, z = 5691.558 }, rot = { x = 0.000, y = 284.551, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- C点沙子
	{ config_id = 22006, gadget_id = 70290700, pos = { x = -1719.697, y = 18.252, z = 5680.114 }, rot = { x = 0.000, y = 245.818, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	-- C点沙子
	{ config_id = 22007, gadget_id = 70290698, pos = { x = -1726.738, y = 19.824, z = 5681.128 }, rot = { x = 0.000, y = 12.917, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1022002, name = "GADGET_STATE_CHANGE_22002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22002", action = "action_EVENT_GADGET_STATE_CHANGE_22002" },
	{ config_id = 1022008, name = "SELECT_OPTION_22008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22008", action = "action_EVENT_SELECT_OPTION_22008" }
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
		gadgets = { 22001, 22003, 22004, 22005, 22006, 22007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_22002", "SELECT_OPTION_22008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22002(context, evt)
	if 22003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307022, 22004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22002(context, evt)
	-- 将configid为 22004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307022, 22004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_22008(context, evt)
	-- 判断是gadgetid 22004 option_id 7
	if 22004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_22008(context, evt)
	-- 将configid为 22004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 22005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307022 ；指定config：22004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307022, 22004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"