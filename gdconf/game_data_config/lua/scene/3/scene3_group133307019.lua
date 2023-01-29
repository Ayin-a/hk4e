-- 基础信息
local base_info = {
	group_id = 133307019
}

-- DEFS_MISCS
--风扇
local fans =
{
    19005
}
--沙堆
local sandpiles =
{
    19007,
    19006
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
    [sandpiles[1]] = {fan = fans[1], dir_state = 204, pos = 1},
    [sandpiles[2]] = {fan = fans[1], dir_state = 202, pos = 1}
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
	{ config_id = 19001, gadget_id = 70330404, pos = { x = -1701.129, y = 19.824, z = 5694.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- C门
	{ config_id = 19003, gadget_id = 70330416, pos = { x = -1692.300, y = 23.549, z = 5733.152 }, rot = { x = 0.000, y = 15.149, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- C门开关
	{ config_id = 19004, gadget_id = 70330333, pos = { x = -1690.369, y = 23.282, z = 5729.851 }, rot = { x = 0.000, y = 16.469, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	-- B风扇
	{ config_id = 19005, gadget_id = 70290698, pos = { x = -1702.414, y = 19.824, z = 5695.793 }, rot = { x = 0.000, y = 14.720, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- C门沙堆
	{ config_id = 19006, gadget_id = 70290702, pos = { x = -1689.609, y = 22.916, z = 5735.058 }, rot = { x = 2.931, y = 67.395, z = 0.200 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 19007, gadget_id = 70290700, pos = { x = -1703.222, y = 17.930, z = 5688.507 }, rot = { x = 0.000, y = 338.643, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门
	{ config_id = 1019002, name = "GADGET_STATE_CHANGE_19002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19002", action = "action_EVENT_GADGET_STATE_CHANGE_19002", trigger_count = 0 },
	-- 开门
	{ config_id = 1019008, name = "SELECT_OPTION_19008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19008", action = "action_EVENT_SELECT_OPTION_19008", trigger_count = 0 }
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
		gadgets = { 19001, 19003, 19004, 19005, 19006, 19007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19002", "SELECT_OPTION_19008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19002(context, evt)
	if 19006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19002(context, evt)
	-- 将configid为 19004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307019, 19004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19008(context, evt)
	-- 判断是gadgetid 19004 option_id 7
	if 19004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19008(context, evt)
	-- 将configid为 19004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307019 ；指定config：19004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307019, 19004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"