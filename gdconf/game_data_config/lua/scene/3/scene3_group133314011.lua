-- 基础信息
local base_info = {
	group_id = 133314011
}

-- Trigger变量
local defs = {
	point_camera = 11007,
	gadget_lookEntity = 11008,
	look_duration = 5
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,  --镜头的移动路径，球面0，直线1
    blend_duration = 1, --镜头的移动时间
    is_force_walk = false, --强制玩家行走
    is_allow_input = false, --允许输入
    delay = 0, --触发延迟
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
	[11001] = { config_id = 11001, gadget_id = 70330420, pos = { x = -918.465, y = -132.251, z = 4906.747 }, rot = { x = 0.000, y = 295.675, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[11002] = { config_id = 11002, gadget_id = 70330333, pos = { x = -901.584, y = -135.865, z = 4900.459 }, rot = { x = 0.000, y = 72.415, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 目标注视点
	[11008] = { config_id = 11008, gadget_id = 70950145, pos = { x = -915.270, y = -123.768, z = 4905.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011003, name = "SELECT_OPTION_11003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11003", action = "action_EVENT_SELECT_OPTION_11003", trigger_count = 0 },
	-- 开门保底
	{ config_id = 1011004, name = "GROUP_LOAD_11004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_11004", action = "action_EVENT_GROUP_LOAD_11004", trigger_count = 0 },
	-- 重登
	{ config_id = 1011006, name = "GADGET_CREATE_11006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11006", action = "action_EVENT_GADGET_CREATE_11006", trigger_count = 0 }
}

-- 点位
points = {
	[11007] = { config_id = 11007, pos = { x = -895.926, y = -133.574, z = 4898.969 }, rot = { x = 0.000, y = 272.088, z = 0.000 }, area_id = 32 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 11001, 11002 },
		regions = { },
		triggers = { "SELECT_OPTION_11003", "GROUP_LOAD_11004", "GADGET_CREATE_11006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_11003(context, evt)
	-- 判断是gadgetid 11002 option_id 7
	if 11002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7318631)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11003(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133314011 ；指定config：11002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314011, 11002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	LF_PointLook(context)
	
	-- 将configid为 11001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 11002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_11004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11004(context, evt)
	-- 将configid为 11001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_11006(context, evt)
	if 11002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314011, 11002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_0/CameraLook"