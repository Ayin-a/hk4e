-- 基础信息
local base_info = {
	group_id = 133308220
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {440}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

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
	{ config_id = 220001, gadget_id = 70330287, pos = { x = -1298.595, y = 68.567, z = 4546.514 }, rot = { x = 0.000, y = 99.972, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 26 },
	{ config_id = 220002, gadget_id = 70330283, pos = { x = -1308.341, y = 72.402, z = 4527.780 }, rot = { x = 0.000, y = 279.454, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100006, SGV_CHAINLEVEL = 1}, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1220003, name = "SELECT_OPTION_220003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_220003", action = "action_EVENT_SELECT_OPTION_220003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1220004, name = "GADGET_STATE_CHANGE_220004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220004", action = "action_EVENT_GADGET_STATE_CHANGE_220004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1220005, name = "GROUP_LOAD_220005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_220005", action = "action_EVENT_GROUP_LOAD_220005", trigger_count = 0 },
	{ config_id = 1220006, name = "QUEST_FINISH_220006", event = EventType.EVENT_QUEST_FINISH, source = "7305547", condition = "", action = "action_EVENT_QUEST_FINISH_220006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 220007, gadget_id = 70950047, pos = { x = -1293.120, y = 69.335, z = 4543.419 }, rot = { x = 0.000, y = 9.957, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 26 },
		{ config_id = 220008, gadget_id = 70950047, pos = { x = -1292.321, y = 69.335, z = 4547.971 }, rot = { x = 0.000, y = 9.957, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 26 },
		{ config_id = 220009, gadget_id = 70950047, pos = { x = -1296.333, y = 69.335, z = 4552.487 }, rot = { x = 0.000, y = 9.957, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 26 },
		{ config_id = 220010, gadget_id = 70950047, pos = { x = -1300.598, y = 69.335, z = 4553.196 }, rot = { x = 0.000, y = 9.957, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 26 }
	}
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
		gadgets = { 220001, 220002 },
		regions = { },
		triggers = { "SELECT_OPTION_220003", "GADGET_STATE_CHANGE_220004", "GROUP_LOAD_220005", "QUEST_FINISH_220006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_220003(context, evt)
	-- 判断是gadgetid 220002 option_id 440
	if 220002 ~= evt.param1 then
		return false	
	end
	
	if 440 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_220003(context, evt)
	-- 将configid为 220002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1299.117, y=68.65953, z=4546.569}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1299.117, y=68.65953, z=4546.569}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220004(context, evt)
	if 220002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220004(context, evt)
	-- 将configid为 220001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_220005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308220, 220002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_220005(context, evt)
	-- 将configid为 220001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_220006(context, evt)
	-- 将configid为 220002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"