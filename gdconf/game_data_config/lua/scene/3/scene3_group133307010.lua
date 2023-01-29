-- 基础信息
local base_info = {
	group_id = 133307010
}

-- DEFS_MISCS
--风扇
local fans =
{
    10002
}
--沙堆
local sandpiles =
{
    10007   
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
    [sandpiles[1]] = {fan = fans[1], dir_state = 202, pos = 1}
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
	{ config_id = 10001, gadget_id = 70330333, pos = { x = -1536.785, y = 54.753, z = 5636.504 }, rot = { x = 0.000, y = 17.300, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 10002, gadget_id = 70290697, pos = { x = -1539.212, y = 54.785, z = 5626.569 }, rot = { x = 0.000, y = 17.043, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 10005, gadget_id = 70330420, pos = { x = -1550.317, y = 58.138, z = 5633.512 }, rot = { x = 0.000, y = 284.249, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 10007, gadget_id = 70290703, pos = { x = -1536.189, y = 54.762, z = 5637.618 }, rot = { x = 0.000, y = 104.971, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010004, name = "SELECT_OPTION_10004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10004", action = "action_EVENT_SELECT_OPTION_10004", trigger_count = 0 },
	-- 任务锁风扇
	{ config_id = 1010008, name = "QUEST_START_10008", event = EventType.EVENT_QUEST_START, source = "7321908", condition = "condition_EVENT_QUEST_START_10008", action = "action_EVENT_QUEST_START_10008", trigger_count = 0 },
	-- 沙子死亡
	{ config_id = 1010009, name = "GADGET_STATE_CHANGE_10009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10009", action = "action_EVENT_GADGET_STATE_CHANGE_10009" }
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
		gadgets = { 10001, 10002, 10005, 10007 },
		regions = { },
		triggers = { "SELECT_OPTION_10004", "QUEST_START_10008", "GADGET_STATE_CHANGE_10009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_10004(context, evt)
	-- 判断是gadgetid 10001 option_id 7
	if 10001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10004(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 10001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 10005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307010 ；指定config：10001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307010, 10001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_10008(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307010, 10002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_10008(context, evt)
	-- 将configid为 10002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	if 10007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	-- 将configid为 10001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307010, 10001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"