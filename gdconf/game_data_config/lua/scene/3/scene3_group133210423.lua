-- 基础信息
local base_info = {
	group_id = 133210423
}

-- Trigger变量
local defs = {
	group_ID = 133210423,
	gadget_1 = 423001,
	rotation_1 = 180,
	gadget_2 = 423004,
	rotation_2 = 180,
	gadget_3 = 423008,
	rotation_3 = 270,
	gadget_4 = 423011,
	rotation_4 = 90,
	gadget_5 = 423014,
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
	{ config_id = 423001, gadget_id = 70330081, pos = { x = -3900.918, y = 202.774, z = -1056.344 }, rot = { x = 0.000, y = 191.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 423002, gadget_id = 70330085, pos = { x = -3901.286, y = 205.735, z = -1059.889 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423003, gadget_id = 70330084, pos = { x = -3900.918, y = 202.774, z = -1056.345 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423004, gadget_id = 70330081, pos = { x = -3902.110, y = 204.359, z = -1063.623 }, rot = { x = 0.000, y = 191.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 423005, gadget_id = 70330085, pos = { x = -3902.109, y = 206.183, z = -1063.622 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423006, gadget_id = 70211121, pos = { x = -3911.717, y = 204.199, z = -1051.889 }, rot = { x = 0.005, y = 151.615, z = 0.026 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 423007, gadget_id = 70330084, pos = { x = -3902.110, y = 204.359, z = -1063.623 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423008, gadget_id = 70330081, pos = { x = -3910.917, y = 204.359, z = -1062.090 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 423009, gadget_id = 70330085, pos = { x = -3910.916, y = 206.200, z = -1062.089 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423010, gadget_id = 70330084, pos = { x = -3910.917, y = 204.359, z = -1062.090 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423011, gadget_id = 70330081, pos = { x = -3909.022, y = 204.311, z = -1053.776 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 423012, gadget_id = 70330085, pos = { x = -3905.760, y = 206.008, z = -1058.954 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423013, gadget_id = 70330084, pos = { x = -3909.022, y = 204.311, z = -1053.776 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423014, gadget_id = 70330083, pos = { x = -3906.630, y = 204.203, z = -1062.735 }, rot = { x = 0.000, y = 101.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 423015, gadget_id = 70330083, pos = { x = -3909.958, y = 204.203, z = -1058.009 }, rot = { x = 0.000, y = 281.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423016, gadget_id = 70330083, pos = { x = -3901.301, y = 203.917, z = -1059.912 }, rot = { x = 0.000, y = 281.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 423017, gadget_id = 70330083, pos = { x = -3905.760, y = 204.202, z = -1058.954 }, rot = { x = 0.000, y = 101.092, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	-- 开始时一次性对话
	{ config_id = 423021, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3905.372, y = 204.202, z = -1059.612 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 成功Trigger：结束一次性对话
	{ config_id = 1423018, name = "VARIABLE_CHANGE_423018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_423018", action = "action_EVENT_VARIABLE_CHANGE_423018" },
	{ config_id = 1423019, name = "GROUP_LOAD_423019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_423019", action = "action_EVENT_GROUP_LOAD_423019", trigger_count = 0 },
	{ config_id = 1423020, name = "GADGET_STATE_CHANGE_423020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423020", action = "action_EVENT_GADGET_STATE_CHANGE_423020" },
	-- 开始时一次性对话
	{ config_id = 1423021, name = "ENTER_REGION_423021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_423021", action = "action_EVENT_ENTER_REGION_423021" }
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
	end_suite = 4,
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
		gadgets = { 423001, 423002, 423003, 423004, 423005, 423007, 423008, 423009, 423010, 423011, 423012, 423013, 423014, 423015, 423016, 423017 },
		regions = { 423021 },
		triggers = { "VARIABLE_CHANGE_423018", "GADGET_STATE_CHANGE_423020", "ENTER_REGION_423021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 423006 },
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
		triggers = { "GROUP_LOAD_423019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_VARIABLE_CHANGE_423018(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_423018(context, evt)
	-- 将本组内变量名为 "EndTalk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "EndTalk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 32100202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 423015 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423015, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 423016 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423016, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 423017 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423017, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_423019(context, evt)
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_423019(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210423, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423020(context, evt)
	if 423006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423020(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Success", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210423, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_423021(context, evt)
	if evt.param1 ~= 423021 then return false end
	
	-- 判断变量"StartTalk"为0
	if ScriptLib.GetGroupVariableValue(context, "StartTalk") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_423021(context, evt)
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
	
	-- 调用提示id为 32100201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare_V2"