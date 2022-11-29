-- 基础信息
local base_info = {
	group_id = 133308354
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
	{ config_id = 354001, gadget_id = 70330287, pos = { x = -1422.846, y = 30.799, z = 4730.030 }, rot = { x = 0.000, y = 100.093, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 26 },
	{ config_id = 354002, gadget_id = 70330283, pos = { x = -1443.622, y = 34.800, z = 4726.312 }, rot = { x = 0.000, y = 189.265, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100006, SGV_CHAINLEVEL = 1}, area_id = 26 },
	{ config_id = 354007, gadget_id = 70330434, pos = { x = -1423.126, y = 13.424, z = 4730.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1354003, name = "SELECT_OPTION_354003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_354003", action = "action_EVENT_SELECT_OPTION_354003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1354004, name = "GADGET_STATE_CHANGE_354004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_354004", action = "action_EVENT_GADGET_STATE_CHANGE_354004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1354005, name = "GROUP_LOAD_354005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_354005", action = "action_EVENT_GROUP_LOAD_354005", trigger_count = 0 },
	{ config_id = 1354006, name = "QUEST_FINISH_354006", event = EventType.EVENT_QUEST_FINISH, source = "7305547", condition = "", action = "action_EVENT_QUEST_FINISH_354006", trigger_count = 0 }
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
		gadgets = { 354001, 354002 },
		regions = { },
		triggers = { "SELECT_OPTION_354003", "GADGET_STATE_CHANGE_354004", "GROUP_LOAD_354005", "QUEST_FINISH_354006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 354007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_354003(context, evt)
	-- 判断是gadgetid 354002 option_id 440
	if 354002 ~= evt.param1 then
		return false	
	end
	
	if 440 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_354003(context, evt)
	-- 将configid为 354002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308354, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1422.846, y=30.79938, z=4730.03}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1422.846, y=30.79938, z=4730.03}
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
function condition_EVENT_GADGET_STATE_CHANGE_354004(context, evt)
	if 354002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_354004(context, evt)
	-- 将configid为 354001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_354005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308354, 354002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_354005(context, evt)
	-- 将configid为 354001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308354, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_354006(context, evt)
	-- 将configid为 354002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"