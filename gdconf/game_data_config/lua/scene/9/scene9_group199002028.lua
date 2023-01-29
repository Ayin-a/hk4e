-- 基础信息
local base_info = {
	group_id = 199002028
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 199002028,
	--起始操作台configID
	start_operator = 28009,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
		28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008
	},
	--行动序列
	actions = 
	{
   		[1] = { config_id = 28001, reminder_id = 1111088, point_array = 0, point_id_list = 0, duration = 15},
   		[2] = { config_id = 28002, reminder_id = 1111090, point_array = 900200084, point_id_list = {1,2,3}, duration = 11},
   		[3] = { config_id = 28008, reminder_id = 0, point_array = 900200085, point_id_list = {1,2}, duration = 2},
   		[4] = { config_id = 28003, reminder_id = 1111092, point_array = 0, point_id_list = 0, duration = 8},
   		[5] = { config_id = 28008, reminder_id = 0, point_array = 900200086, point_id_list = {1,2}, duration = 2},
   		[6] = { config_id = 28004, reminder_id = 1111093, point_array = 0, point_id_list = 0, duration = 5},
   		[7] = { config_id = 28008, reminder_id = 0, point_array = 900200087, point_id_list = {1,2}, duration = 2},
   		[8] = { config_id = 28005, reminder_id = 1111094, point_array = 0, point_id_list = 0, duration = 5},
   		[9] = { config_id = 28008, reminder_id = 0, point_array = 900200088, point_id_list = {1,2}, duration = 2},
   		[10] = { config_id = 28006, reminder_id = 1111095, point_array = 0, point_id_list = 0, duration = 5},
   		[11] = { config_id = 28008, reminder_id = 0, point_array = 900200089, point_id_list = {1,2}, duration = 2},
   		[12] = { config_id = 28007, reminder_id = 1111096, point_array = 0, point_id_list = 0, duration = 7},
   		[13] = { config_id = 28008, reminder_id = 0, point_array = 900200090, point_id_list = {1,2}, duration = 2},
   		[14] = { config_id = 28008, reminder_id = 1111097, point_array = 0, point_id_list = 0, duration = 6},
   		[15] = { config_id = 28001, reminder_id = 1111098, point_array = 0, point_id_list = 0, duration = 8},


	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   
		2
	},
	--真正的凶手对应哪个操作台config_id
	answer = 28014,
	--玩法范围，主机出圈则重置
	play_region = 28017,

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
	-- 提问者
	[28001] = { config_id = 28001, gadget_id = 70310175, pos = { x = 564.647, y = 120.675, z = -387.988 }, rot = { x = 0.000, y = 355.958, z = 0.000 }, level = 20, area_id = 401 },
	-- 厨师A
	[28002] = { config_id = 28002, gadget_id = 70310257, pos = { x = 568.206, y = 120.719, z = -384.096 }, rot = { x = 0.000, y = 285.664, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 无奈的守卫C
	[28003] = { config_id = 28003, gadget_id = 70310259, pos = { x = 567.359, y = 120.582, z = -380.830 }, rot = { x = 0.000, y = 200.255, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 蛮横的守卫D
	[28004] = { config_id = 28004, gadget_id = 70310257, pos = { x = 565.372, y = 120.504, z = -380.789 }, rot = { x = 0.000, y = 159.705, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 挑食的守卫E
	[28005] = { config_id = 28005, gadget_id = 70310257, pos = { x = 564.118, y = 120.485, z = -381.594 }, rot = { x = 0.000, y = 143.631, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 尽责的守卫F
	[28006] = { config_id = 28006, gadget_id = 70310259, pos = { x = 563.002, y = 120.485, z = -383.032 }, rot = { x = 0.000, y = 116.065, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 异食的守卫G
	[28007] = { config_id = 28007, gadget_id = 70310257, pos = { x = 562.441, y = 120.492, z = -384.772 }, rot = { x = 0.000, y = 98.744, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 守卫长官B
	[28008] = { config_id = 28008, gadget_id = 70310257, pos = { x = 566.238, y = 120.617, z = -384.584 }, rot = { x = 0.000, y = 319.821, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始案件
	[28009] = { config_id = 28009, gadget_id = 70360001, pos = { x = 564.647, y = 120.732, z = -387.988 }, rot = { x = 0.000, y = 355.958, z = 0.000 }, level = 20, worktop_config = { init_options = { 401 } }, area_id = 401 },
	-- 厨师A操作台
	[28010] = { config_id = 28010, gadget_id = 70360189, pos = { x = 572.507, y = 120.877, z = -383.214 }, rot = { x = 0.000, y = 78.406, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 无奈的守卫C操作台
	[28011] = { config_id = 28011, gadget_id = 70360189, pos = { x = 567.359, y = 120.758, z = -380.830 }, rot = { x = 0.000, y = 200.255, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 蛮横的守卫D操作台
	[28012] = { config_id = 28012, gadget_id = 70360189, pos = { x = 565.372, y = 120.821, z = -380.789 }, rot = { x = 0.000, y = 159.705, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 挑食的守卫E操作台
	[28013] = { config_id = 28013, gadget_id = 70360189, pos = { x = 564.118, y = 120.617, z = -381.594 }, rot = { x = 0.000, y = 143.631, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 尽责的守卫F操作台
	[28014] = { config_id = 28014, gadget_id = 70360189, pos = { x = 563.002, y = 120.617, z = -383.032 }, rot = { x = 0.000, y = 116.065, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 异食的守卫G操作台
	[28015] = { config_id = 28015, gadget_id = 70360189, pos = { x = 562.441, y = 120.617, z = -384.772 }, rot = { x = 0.000, y = 98.744, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	[28018] = { config_id = 28018, gadget_id = 70211002, pos = { x = 566.329, y = 120.794, z = -387.678 }, rot = { x = 0.000, y = 324.551, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[28017] = { config_id = 28017, shape = RegionShape.SPHERE, radius = 17, pos = { x = 565.967, y = 120.617, z = -384.074 }, area_id = 401 },
	[28020] = { config_id = 28020, shape = RegionShape.SPHERE, radius = 4, pos = { x = 566.329, y = 120.794, z = -387.678 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1028016, name = "VARIABLE_CHANGE_28016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_28016", action = "action_EVENT_VARIABLE_CHANGE_28016", trigger_count = 0 },
	{ config_id = 1028019, name = "GROUP_LOAD_28019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_28019", action = "action_EVENT_GROUP_LOAD_28019", trigger_count = 0 },
	{ config_id = 1028020, name = "ENTER_REGION_28020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_28020", trigger_count = 0 }
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
		gadgets = { 28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28009, 28018 },
		regions = { 28017, 28020 },
		triggers = { "VARIABLE_CHANGE_28016", "GROUP_LOAD_28019", "ENTER_REGION_28020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28010, 28011, 28012, 28013, 28014, 28015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28018 },
		regions = { },
		triggers = { "GROUP_LOAD_28019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_28016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_28016(context, evt)
	-- 将configid为 28018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002028, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_28019(context, evt)
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_28019(context, evt)
	-- 将configid为 28018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_28020(context, evt)
	if 28020 == evt.param1 then
	else
		if 0 == ScriptLib.TryRecordActivityPushTips(context, 2014017) then
			ScriptLib.TryRecordActivityPushTips(context, 2014017)
			
			ScriptLib.ShowClientTutorial(context, 1187, {})
		end
	end
	
	return 0
end

require "V2_8/CrowTheatre_Whodunit"