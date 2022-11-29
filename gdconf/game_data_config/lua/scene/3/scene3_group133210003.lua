-- 基础信息
local base_info = {
	group_id = 133210003
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
	{ config_id = 3001, gadget_id = 70360167, pos = { x = -3783.693, y = 201.545, z = -1335.962 }, rot = { x = 0.000, y = 112.047, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1003003, name = "GADGET_STATE_CHANGE_3003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3003", action = "action_EVENT_GADGET_STATE_CHANGE_3003", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1003004, name = "GADGET_STATE_CHANGE_3004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3004", action = "action_EVENT_GADGET_STATE_CHANGE_3004", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1003005, name = "TIME_AXIS_PASS_3005", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_3005", action = "action_EVENT_TIME_AXIS_PASS_3005", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1003006, name = "TIME_AXIS_PASS_3006", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_3006", action = "action_EVENT_TIME_AXIS_PASS_3006", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1003007, name = "GADGET_CREATE_3007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3007", action = "action_EVENT_GADGET_CREATE_3007", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1003008, name = "SELECT_OPTION_3008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3008", action = "action_EVENT_SELECT_OPTION_3008", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1003009, name = "TIME_AXIS_PASS_3009", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_3009", action = "action_EVENT_TIME_AXIS_PASS_3009", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1003010, name = "TIME_AXIS_PASS_3010", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_3010", action = "action_EVENT_TIME_AXIS_PASS_3010", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1003011, name = "SELECT_OPTION_3011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3011", action = "action_EVENT_SELECT_OPTION_3011", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1003012, name = "GADGET_CREATE_3012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3012", action = "action_EVENT_GADGET_CREATE_3012", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1003013, name = "GADGET_STATE_CHANGE_3013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3013", action = "action_EVENT_GADGET_STATE_CHANGE_3013", trigger_count = 0 },
	-- 杀怪时改变量
	{ config_id = 1003014, name = "VARIABLE_CHANGE_3014", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_3014", action = "action_EVENT_VARIABLE_CHANGE_3014" },
	-- 杀怪后加载时将尊像重置为关闭
	{ config_id = 1003015, name = "GROUP_LOAD_3015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_3015", action = "action_EVENT_GROUP_LOAD_3015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Times", value = 0, no_refresh = true },
	{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 3002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3778.180, y = 202.548, z = -1325.854 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1003002, name = "ENTER_REGION_3002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3002", action = "action_EVENT_ENTER_REGION_3002", trigger_count = 0 }
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
		gadgets = { 3001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_3003", "GADGET_STATE_CHANGE_3004", "TIME_AXIS_PASS_3005", "TIME_AXIS_PASS_3006", "SELECT_OPTION_3008", "TIME_AXIS_PASS_3009", "TIME_AXIS_PASS_3010", "SELECT_OPTION_3011", "GADGET_STATE_CHANGE_3013", "VARIABLE_CHANGE_3014", "GROUP_LOAD_3015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3003(context, evt)
	-- 检测config_id为3001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 3001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3003(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3004(context, evt)
	-- 检测config_id为3001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 3001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3004(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_3005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3005(context, evt)
	-- 将本组内变量名为 "GadgetState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetState", 1, 133210002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	
	-- 判断变量"Times"为0
	if ScriptLib.GetGroupVariableValue(context, "Times") == 0 then
	-- 触发镜头注目，注目位置为坐标（-3784.6，207.1，-1327.7），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3785, y=205.27, z=-1326.64}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	ScriptLib.SetGroupVariableValue(context, "Times", 1)
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_3006(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3006(context, evt)
	-- 将本组内变量名为 "GadgetState" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetState", 0, 133210002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3007(context, evt)
	if 3001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210003, 3001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3008(context, evt)
	-- 判断是gadgetid 3001 option_id 61
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3008(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210003 ；指定config：3001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210003, 3001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_3009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210003, 3001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_3010(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210003, 3001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3011(context, evt)
	-- 判断是gadgetid 3001 option_id 62
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3011(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210003 ；指定config：3001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210003, 3001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3012(context, evt)
	if 3001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210003, 3001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3013(context, evt)
	-- 检测config_id为3001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 3001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210003, 3001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3014(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_3015(context, evt)
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3015(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210003, 3001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end