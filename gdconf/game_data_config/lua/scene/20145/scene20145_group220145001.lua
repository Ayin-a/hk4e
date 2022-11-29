-- 基础信息
local base_info = {
	group_id = 220145001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1025, monster_id = 26090201, pos = { x = 456.959, y = 97.483, z = 557.131 }, rot = { x = 0.000, y = 8.748, z = 0.000 }, level = 1, pose_id = 104 },
	{ config_id = 1026, monster_id = 26090201, pos = { x = 456.361, y = 97.026, z = 547.775 }, rot = { x = 0.000, y = 93.065, z = 0.000 }, level = 1, pose_id = 105 },
	{ config_id = 1027, monster_id = 26090201, pos = { x = 452.135, y = 97.138, z = 555.159 }, rot = { x = 0.000, y = 266.995, z = 0.000 }, level = 1, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70350456, pos = { x = 474.568, y = 115.925, z = 504.315 }, rot = { x = 3.228, y = 280.642, z = 359.777 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350456, pos = { x = 449.028, y = 115.632, z = 514.803 }, rot = { x = 0.000, y = 307.027, z = 0.000 }, level = 1 },
	-- 最终操作台
	{ config_id = 1003, gadget_id = 70290526, pos = { x = 485.338, y = 116.947, z = 498.889 }, rot = { x = 0.000, y = 57.558, z = 0.000 }, level = 1, worktop_config = { init_options = { 91 } } },
	{ config_id = 1004, gadget_id = 70350456, pos = { x = 451.555, y = 141.718, z = 484.816 }, rot = { x = 0.629, y = 289.139, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70950047, pos = { x = 443.766, y = 103.355, z = 445.645 }, rot = { x = 0.000, y = 330.903, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70220103, pos = { x = 441.305, y = 146.880, z = 497.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70210101, pos = { x = 467.352, y = 68.100, z = 516.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 1009, gadget_id = 70310198, pos = { x = 457.879, y = 97.125, z = 560.598 }, rot = { x = 0.000, y = 218.622, z = 0.000 }, level = 1 },
	-- 罩子+光桥操作台
	{ config_id = 1010, gadget_id = 70290526, pos = { x = 439.490, y = 115.516, z = 525.406 }, rot = { x = 0.000, y = 279.782, z = 0.000 }, level = 1, worktop_config = { init_options = { 91 } } },
	{ config_id = 1011, gadget_id = 70950047, pos = { x = 429.418, y = 102.033, z = 454.855 }, rot = { x = 0.000, y = 315.326, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70290520, pos = { x = 456.676, y = 113.820, z = 509.384 }, rot = { x = 0.000, y = 347.471, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70290520, pos = { x = 465.353, y = 114.206, z = 506.673 }, rot = { x = 5.560, y = 56.569, z = 355.500 }, level = 1 },
	{ config_id = 1015, gadget_id = 70290520, pos = { x = 461.073, y = 114.326, z = 506.312 }, rot = { x = 0.000, y = 39.075, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70210101, pos = { x = 466.762, y = 68.100, z = 529.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 1019, gadget_id = 70210101, pos = { x = 448.129, y = 95.881, z = 532.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 1021, gadget_id = 70290482, pos = { x = 489.674, y = 120.743, z = 499.365 }, rot = { x = 0.000, y = 121.011, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70220103, pos = { x = 461.558, y = 135.140, z = 500.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70210101, pos = { x = 449.392, y = 96.861, z = 554.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 1030, gadget_id = 70290574, pos = { x = 609.670, y = 137.600, z = 671.620 }, rot = { x = 0.000, y = 359.783, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70950047, pos = { x = 444.977, y = 141.591, z = 487.151 }, rot = { x = 0.000, y = 16.128, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70950047, pos = { x = 460.216, y = 141.750, z = 481.898 }, rot = { x = 0.000, y = 16.128, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70211001, pos = { x = 515.784, y = 89.594, z = 587.984 }, rot = { x = 0.000, y = 123.734, z = 0.000 }, level = 1, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 最终操作台
	{ config_id = 1001007, name = "SELECT_OPTION_1007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1007", action = "action_EVENT_SELECT_OPTION_1007", trigger_count = 0 },
	-- 创建琥珀门目标点
	{ config_id = 1001020, name = "VARIABLE_CHANGE_1020", event = EventType.EVENT_VARIABLE_CHANGE, source = "KeyNum", condition = "condition_EVENT_VARIABLE_CHANGE_1020", action = "action_EVENT_VARIABLE_CHANGE_1020" },
	-- 罩子+光桥操作台
	{ config_id = 1001031, name = "SELECT_OPTION_1031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1031", action = "action_EVENT_SELECT_OPTION_1031", trigger_count = 0 },
	-- 打碎可破坏藤蔓
	{ config_id = 1001032, name = "ANY_GADGET_DIE_1032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1032", action = "action_EVENT_ANY_GADGET_DIE_1032" }
}

-- 变量
variables = {
	{ config_id = 1, name = "KeyNum", value = 0, no_refresh = false }
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
		monsters = { 1025, 1026, 1027 },
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1008, 1009, 1010, 1011, 1013, 1014, 1015, 1018, 1019, 1021, 1028, 1030, 1033, 1034, 1044 },
		regions = { },
		triggers = { "SELECT_OPTION_1007", "VARIABLE_CHANGE_1020", "SELECT_OPTION_1031", "ANY_GADGET_DIE_1032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1006, 1023 },
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
function condition_EVENT_SELECT_OPTION_1007(context, evt)
	-- 判断是gadgetid 1003 option_id 91
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1007(context, evt)
	-- 删除指定group： 220145001 ；指定config：1003；物件身上指定option：91；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220145001, 1003, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145001, 3)
	
	-- 触发镜头注目，注目位置为坐标{x=449.3602, y=149.2858, z=495.1671}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=449.3602, y=149.2858, z=495.1671}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"KeyNum"为3
	if ScriptLib.GetGroupVariableValue(context, "KeyNum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1031(context, evt)
	-- 判断是gadgetid 1010 option_id 91
	if 1010 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1031(context, evt)
	-- 删除指定group： 220145001 ；指定config：1010；物件身上指定option：91；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220145001, 1010, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStart)
	
	-- 触发镜头注目，注目位置为坐标{x=461.0726, y=114.3255, z=506.3117}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=461.0726, y=114.3255, z=506.3117}
	local pos_follow = {x=438.21, y=121.03, z=524.16}
	if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, is_abs_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false, 
	                                                      disable_protect = 1, blend_type = 1, blend_duration = 0,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
	end
	
	-- 将configid为 1010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1032(context, evt)
	if 1021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1032(context, evt)
	-- 调用提示id为 33010126 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end