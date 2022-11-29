-- 基础信息
local base_info = {
	group_id = 133210384
}

-- Trigger变量
local defs = {
	group_ID = 133210384,
	gadget_1 = 384001,
	rotation_1 = 270,
	gadget_2 = 384004,
	rotation_2 = 90,
	gadget_3 = 384009,
	rotation_3 = 180,
	gadget_4 = 384012,
	rotation_4 = 90,
	gadget_5 = 384015,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {},
	gadget_connect3 = {},
	gadget_connect4 = {},
	gadget_connect5 = {}
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
	{ config_id = 384001, gadget_id = 70330081, pos = { x = -3900.918, y = 202.774, z = -1056.344 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 384002, gadget_id = 70330085, pos = { x = -3902.086, y = 205.998, z = -1063.709 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384003, gadget_id = 70330084, pos = { x = -3900.918, y = 202.774, z = -1056.345 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384004, gadget_id = 70330081, pos = { x = -3909.991, y = 204.359, z = -1058.187 }, rot = { x = 0.000, y = 281.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 384005, gadget_id = 70330085, pos = { x = -3909.984, y = 206.199, z = -1058.171 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384006, gadget_id = 70211111, pos = { x = -3911.717, y = 204.199, z = -1051.889 }, rot = { x = 0.007, y = 147.009, z = 0.025 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 384008, gadget_id = 70330084, pos = { x = -3909.991, y = 204.359, z = -1058.187 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384009, gadget_id = 70330081, pos = { x = -3910.917, y = 204.359, z = -1062.090 }, rot = { x = 0.000, y = 191.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 384010, gadget_id = 70330085, pos = { x = -3910.916, y = 206.202, z = -1062.089 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384011, gadget_id = 70330084, pos = { x = -3910.917, y = 204.359, z = -1062.090 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384012, gadget_id = 70330081, pos = { x = -3905.763, y = 204.311, z = -1059.107 }, rot = { x = 0.000, y = 101.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 384013, gadget_id = 70330085, pos = { x = -3905.762, y = 206.136, z = -1059.106 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384014, gadget_id = 70330084, pos = { x = -3905.763, y = 204.311, z = -1059.107 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384015, gadget_id = 70330083, pos = { x = -3906.630, y = 204.203, z = -1062.735 }, rot = { x = 0.000, y = 101.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 384016, gadget_id = 70330083, pos = { x = -3902.085, y = 204.203, z = -1063.709 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384017, gadget_id = 70330083, pos = { x = -3901.301, y = 203.917, z = -1059.912 }, rot = { x = 0.000, y = 281.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 384018, gadget_id = 70330083, pos = { x = -3908.997, y = 204.202, z = -1053.865 }, rot = { x = 0.000, y = 191.092, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	-- 开始时一次性对话
	{ config_id = 384021, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3905.556, y = 204.177, z = -1059.142 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 玩法成功Trigger：结束时一次性对话
	{ config_id = 1384007, name = "VARIABLE_CHANGE_384007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_384007", action = "action_EVENT_VARIABLE_CHANGE_384007" },
	{ config_id = 1384019, name = "GADGET_STATE_CHANGE_384019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384019", action = "action_EVENT_GADGET_STATE_CHANGE_384019" },
	{ config_id = 1384020, name = "GROUP_LOAD_384020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_384020", action = "action_EVENT_GROUP_LOAD_384020", trigger_count = 0 },
	-- 开始时一次性对话
	{ config_id = 1384021, name = "ENTER_REGION_384021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_384021", action = "action_EVENT_ENTER_REGION_384021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Success", value = 0, no_refresh = true },
	{ config_id = 2, name = "StartTalk", value = 0, no_refresh = true },
	{ config_id = 3, name = "EndTalk", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 384001, 384002, 384003, 384004, 384005, 384008, 384009, 384010, 384011, 384012, 384013, 384014, 384015, 384016, 384017, 384018 },
		regions = { 384021 },
		triggers = { "VARIABLE_CHANGE_384007", "GADGET_STATE_CHANGE_384019", "ENTER_REGION_384021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 384006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_384020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_384007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	-- 判断变量"EndTalk"为0
	if ScriptLib.GetGroupVariableValue(context, "EndTalk") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_384007(context, evt)
	-- 将本组内变量名为 "EndTalk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "EndTalk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 32100196 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 384016 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384016, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 384017 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384017, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 384018 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384018, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384019(context, evt)
	if 384006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384019(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210422) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210384) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_384020(context, evt)
	-- 判断变量"Success"为0
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_384020(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210384, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_384021(context, evt)
	if evt.param1 ~= 384021 then return false end
	
	-- 判断变量"StartTalk"为0
	if ScriptLib.GetGroupVariableValue(context, "StartTalk") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_384021(context, evt)
	-- 将本组内变量名为 "StartTalk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StartTalk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3905.762，206.244，-1059.106），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3905.762, y=206.244, z=-1059.106}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 32100194 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100194) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare_V2"