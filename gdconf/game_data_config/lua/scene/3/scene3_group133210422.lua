-- 基础信息
local base_info = {
	group_id = 133210422
}

-- Trigger变量
local defs = {
	group_ID = 133210422,
	gadget_1 = 422001,
	rotation_1 = 90,
	gadget_2 = 422004,
	rotation_2 = 180,
	gadget_3 = 422008,
	rotation_3 = 270,
	gadget_4 = 422011,
	rotation_4 = 180,
	gadget_5 = 422014,
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
	{ config_id = 422001, gadget_id = 70330081, pos = { x = -3900.822, y = 202.696, z = -1055.857 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 422002, gadget_id = 70330085, pos = { x = -3909.028, y = 206.023, z = -1053.914 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422003, gadget_id = 70330084, pos = { x = -3900.822, y = 202.776, z = -1055.858 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422004, gadget_id = 70330081, pos = { x = -3909.991, y = 204.359, z = -1058.187 }, rot = { x = 0.000, y = 101.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 422005, gadget_id = 70330085, pos = { x = -3906.617, y = 206.183, z = -1062.933 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422006, gadget_id = 70211111, pos = { x = -3911.717, y = 204.199, z = -1051.889 }, rot = { x = 0.008, y = 145.428, z = 0.025 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 422007, gadget_id = 70330084, pos = { x = -3909.991, y = 204.359, z = -1058.187 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422008, gadget_id = 70330081, pos = { x = -3906.617, y = 204.359, z = -1062.933 }, rot = { x = 0.000, y = 281.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 422009, gadget_id = 70330085, pos = { x = -3910.919, y = 206.017, z = -1061.894 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422010, gadget_id = 70330084, pos = { x = -3906.617, y = 204.359, z = -1062.933 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422011, gadget_id = 70330081, pos = { x = -3905.763, y = 204.311, z = -1059.107 }, rot = { x = 0.000, y = 101.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 422012, gadget_id = 70330085, pos = { x = -3905.762, y = 206.141, z = -1059.106 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422013, gadget_id = 70330084, pos = { x = -3905.763, y = 204.311, z = -1059.107 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422014, gadget_id = 70330083, pos = { x = -3910.919, y = 204.203, z = -1061.894 }, rot = { x = 0.000, y = 191.092, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 422015, gadget_id = 70330083, pos = { x = -3902.465, y = 204.203, z = -1063.748 }, rot = { x = 0.000, y = 191.092, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 422016, gadget_id = 70330083, pos = { x = -3905.003, y = 203.424, z = -1054.821 }, rot = { x = 350.924, y = 282.359, z = 344.135 }, level = 30, area_id = 17 },
	{ config_id = 422017, gadget_id = 70330083, pos = { x = -3909.028, y = 204.202, z = -1053.914 }, rot = { x = 0.000, y = 11.092, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	-- 开始时一次性对话
	{ config_id = 422021, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3905.974, y = 204.173, z = -1059.516 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 成功Trigger：结束一次性对话
	{ config_id = 1422018, name = "VARIABLE_CHANGE_422018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_422018", action = "action_EVENT_VARIABLE_CHANGE_422018" },
	{ config_id = 1422019, name = "GADGET_STATE_CHANGE_422019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_422019", action = "action_EVENT_GADGET_STATE_CHANGE_422019" },
	{ config_id = 1422020, name = "GROUP_LOAD_422020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_422020", action = "action_EVENT_GROUP_LOAD_422020", trigger_count = 0 },
	-- 开始时一次性对话
	{ config_id = 1422021, name = "ENTER_REGION_422021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_422021", action = "action_EVENT_ENTER_REGION_422021" }
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
		gadgets = { 422001, 422002, 422003, 422004, 422005, 422007, 422008, 422009, 422010, 422011, 422012, 422013, 422014, 422015, 422016, 422017 },
		regions = { 422021 },
		triggers = { "VARIABLE_CHANGE_422018", "GADGET_STATE_CHANGE_422019", "ENTER_REGION_422021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 422006 },
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
		triggers = { "GROUP_LOAD_422020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_422018(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_422018(context, evt)
	-- 将本组内变量名为 "EndTalk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "EndTalk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 32100200 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100200) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 422015 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422015, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 422016 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422016, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 422017 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422017, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_422019(context, evt)
	if 422006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_422019(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210423) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 2, 133210422) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_422020(context, evt)
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_422020(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210422, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_422021(context, evt)
	if evt.param1 ~= 422021 then return false end
	
	-- 判断变量"StartTalk"为0
	if ScriptLib.GetGroupVariableValue(context, "StartTalk") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_422021(context, evt)
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
	
	-- 调用提示id为 32100198 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100198) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare_V2"