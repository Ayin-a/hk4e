-- 基础信息
local base_info = {
	group_id = 133310561
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133310561
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
	{ config_id = 561001, gadget_id = 70211101, pos = { x = -3035.022, y = 352.774, z = 4675.620 }, rot = { x = 359.868, y = 119.214, z = 359.618 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 561002, gadget_id = 70330343, pos = { x = -3019.228, y = 336.354, z = 4629.397 }, rot = { x = 0.000, y = 261.795, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 561003, gadget_id = 70360001, pos = { x = -3019.303, y = 336.824, z = 4629.419 }, rot = { x = 0.000, y = 261.795, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 561004, gadget_id = 70330392, pos = { x = -3023.181, y = 334.998, z = 4638.491 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561005, gadget_id = 70330393, pos = { x = -3027.415, y = 338.315, z = 4647.918 }, rot = { x = 0.000, y = 65.305, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561006, gadget_id = 70330392, pos = { x = -3026.252, y = 350.651, z = 4691.406 }, rot = { x = 0.000, y = 336.702, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561014, gadget_id = 70330392, pos = { x = -3031.061, y = 340.850, z = 4656.134 }, rot = { x = 0.000, y = 336.559, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561015, gadget_id = 70330393, pos = { x = -3022.260, y = 343.994, z = 4660.142 }, rot = { x = 0.000, y = 156.477, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561016, gadget_id = 70330392, pos = { x = -3014.223, y = 346.472, z = 4664.237 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561017, gadget_id = 70330392, pos = { x = -3018.435, y = 346.408, z = 4673.285 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561018, gadget_id = 70330393, pos = { x = -3022.277, y = 348.821, z = 4682.914 }, rot = { x = 0.000, y = 67.155, z = 9.287 }, level = 32, area_id = 28 },
	{ config_id = 561019, gadget_id = 70330392, pos = { x = -3032.835, y = 352.789, z = 4680.272 }, rot = { x = 90.000, y = 14.688, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 561020, gadget_id = 70330392, pos = { x = -3038.695, y = 352.825, z = 4676.919 }, rot = { x = 90.000, y = 302.780, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1561007, name = "CHALLENGE_SUCCESS_561007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_561007", trigger_count = 0 },
	{ config_id = 1561008, name = "CHALLENGE_FAIL_561008", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_561008", trigger_count = 0 },
	{ config_id = 1561009, name = "GADGET_STATE_CHANGE_561009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_561009", action = "action_EVENT_GADGET_STATE_CHANGE_561009", trigger_count = 0 },
	{ config_id = 1561010, name = "GADGET_STATE_CHANGE_561010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_561010", action = "", tag = "202" },
	{ config_id = 1561011, name = "GADGET_CREATE_561011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_561011", action = "action_EVENT_GADGET_CREATE_561011", trigger_count = 0 },
	{ config_id = 1561012, name = "SELECT_OPTION_561012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_561012", action = "action_EVENT_SELECT_OPTION_561012", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1561013, name = "GROUP_LOAD_561013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_561013", trigger_count = 0 },
	-- 保底，开宝箱就完成
	{ config_id = 1561021, name = "GADGET_STATE_CHANGE_561021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_561021", action = "action_EVENT_GADGET_STATE_CHANGE_561021" },
	-- 保底，开宝箱就完成
	{ config_id = 1561022, name = "VARIABLE_CHANGE_561022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_561022", action = "action_EVENT_VARIABLE_CHANGE_561022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestOpen", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 561002, 561003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_561007", "CHALLENGE_FAIL_561008", "GADGET_STATE_CHANGE_561009", "GADGET_STATE_CHANGE_561010", "GADGET_CREATE_561011", "SELECT_OPTION_561012", "GROUP_LOAD_561013", "GADGET_STATE_CHANGE_561021", "VARIABLE_CHANGE_561022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 561001, 561004, 561005, 561006, 561014, 561015, 561016, 561017, 561018, 561019, 561020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 561002 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_561007(context, evt)
	-- 将configid为 561002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 561002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310561, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310561, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_561008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310561, 2)
	
	-- 将configid为 561002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 561002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为561003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 561003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_561009(context, evt)
	if 561002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_561009(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_561010(context, evt)
	if 561001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_561011(context, evt)
	if 561003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_561011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310561, 561003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_561012(context, evt)
	-- 判断是gadgetid 561003 option_id 177
	if 561003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_561012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 561003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 561002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 561002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-3033.849, y=352.7847, z=4678.827}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3033.849, y=352.7847, z=4678.827}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_561013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310561, 2)
	
	-- 将configid为 561002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 561002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为561003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 561003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_561021(context, evt)
	if 561001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_561021(context, evt)
	-- 将本组内变量名为 "chestOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_561022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "chestOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_561022(context, evt)
	-- 将configid为 561002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 561002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310561, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310561, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end