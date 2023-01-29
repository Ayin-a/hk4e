-- 基础信息
local base_info = {
	group_id = 199002025
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 199002025,
	--起始操作台configID
	start_operator = 25006,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
		25001, 25002, 25003, 25004
	},
	--行动序列
	actions = 
	{
   		[1] = { config_id = 25001, reminder_id = 1111043, point_array = 0, point_id_list = 0, duration = 17},
   		[2] = { config_id = 25002, reminder_id = 1111045, point_array = 900200096, point_id_list = {1,2}, duration = 7},
   		[3] = { config_id = 25003, reminder_id = 1111046, point_array = 900200095, point_id_list = {1,2,3,4,5,6}, duration = 7},
   		[4] = { config_id = 25002, reminder_id = 1111047, point_array = 0, point_id_list = 0, duration = 8},
   		[5] = { config_id = 25003, reminder_id = 1111048, point_array = 0, point_id_list = 0, duration = 9},
   		[6] = { config_id = 25002, reminder_id = 1111049, point_array = 900200097, point_id_list = {1,2,3,4}, duration = 9},
   		[7] = { config_id = 25004, reminder_id = 1111050, point_array = 900200098, point_id_list = {1,2,3,4}, duration = 6},
   		[8] = { config_id = 25003, reminder_id = 1111051, point_array = 900200101, point_id_list = {1,2}, duration = 8},
   		[9] = { config_id = 25002, reminder_id = 1111052, point_array = 900200099, point_id_list = {1,2,3,4}, duration = 8},
   		[10] = { config_id = 25004, reminder_id = 1111053, point_array = 900200100, point_id_list = {1,2,3,4}, duration = 4},
   		[11] = { config_id = 25001, reminder_id = 1111054, point_array = 0, point_id_list = 0, duration = 9},
	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   
		2
	},
	--真正的凶手对应哪个操作台config_id
	answer = 25009,
	--玩法范围，主机出圈则重置
	play_region = 25007,

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
	[25001] = { config_id = 25001, gadget_id = 70310173, pos = { x = 435.367, y = 121.071, z = -374.115 }, rot = { x = 1.150, y = 234.559, z = 356.987 }, level = 1, area_id = 401 },
	-- 夜鸦A  演员
	[25002] = { config_id = 25002, gadget_id = 70310173, pos = { x = 433.971, y = 121.044, z = -378.612 }, rot = { x = 0.000, y = 270.784, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	-- 夜鸦B  编剧
	[25003] = { config_id = 25003, gadget_id = 70310173, pos = { x = 431.560, y = 121.085, z = -379.523 }, rot = { x = 0.000, y = 62.149, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	-- 夜鸦C  导演
	[25004] = { config_id = 25004, gadget_id = 70310173, pos = { x = 430.195, y = 120.729, z = -374.399 }, rot = { x = 356.662, y = 147.220, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	-- 夜鸦守卫
	[25005] = { config_id = 25005, gadget_id = 70310175, pos = { x = 430.951, y = 121.088, z = -381.206 }, rot = { x = 0.000, y = 16.104, z = 0.000 }, level = 1, area_id = 401 },
	-- 开始游戏
	[25006] = { config_id = 25006, gadget_id = 70360001, pos = { x = 435.361, y = 121.237, z = -374.111 }, rot = { x = 0.000, y = 230.015, z = 0.000 }, level = 1, worktop_config = { init_options = { 401 } }, area_id = 401 },
	-- 夜鸦A 演员
	[25008] = { config_id = 25008, gadget_id = 70360189, pos = { x = 433.769, y = 121.299, z = -378.519 }, rot = { x = 0.000, y = 20.676, z = 0.000 }, level = 1, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 夜鸦B 编剧
	[25009] = { config_id = 25009, gadget_id = 70360189, pos = { x = 431.605, y = 121.494, z = -379.392 }, rot = { x = 0.000, y = 330.674, z = 0.000 }, level = 1, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 夜鸦C 导演
	[25010] = { config_id = 25010, gadget_id = 70360189, pos = { x = 430.206, y = 121.271, z = -374.400 }, rot = { x = 0.000, y = 341.858, z = 0.000 }, level = 1, worktop_config = { init_options = { 402 } }, area_id = 401 },
	[25011] = { config_id = 25011, gadget_id = 70211102, pos = { x = 436.873, y = 121.065, z = -372.455 }, rot = { x = 0.692, y = 238.901, z = 354.413 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	[25012] = { config_id = 25012, gadget_id = 70710787, pos = { x = 430.548, y = 120.938, z = -375.111 }, rot = { x = 354.299, y = 145.207, z = 359.586 }, level = 20, area_id = 401 },
	-- 夜鸦守卫
	[25013] = { config_id = 25013, gadget_id = 70310175, pos = { x = 430.195, y = 121.002, z = -378.255 }, rot = { x = 0.000, y = 110.767, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	[25007] = { config_id = 25007, shape = RegionShape.SPHERE, radius = 14, pos = { x = 434.127, y = 118.627, z = -377.630 }, area_id = 401 },
	-- 教学
	[25016] = { config_id = 25016, shape = RegionShape.SPHERE, radius = 4, pos = { x = 436.563, y = 120.988, z = -373.018 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1025014, name = "VARIABLE_CHANGE_25014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_25014", action = "action_EVENT_VARIABLE_CHANGE_25014", trigger_count = 0 },
	{ config_id = 1025015, name = "GROUP_LOAD_25015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_25015", action = "action_EVENT_GROUP_LOAD_25015", trigger_count = 0 },
	-- 教学
	{ config_id = 1025016, name = "ENTER_REGION_25016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_25016", trigger_count = 0 }
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
		gadgets = { 25001, 25002, 25003, 25004, 25005, 25006, 25011, 25012, 25013 },
		regions = { 25007, 25016 },
		triggers = { "VARIABLE_CHANGE_25014", "GROUP_LOAD_25015", "ENTER_REGION_25016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 25008, 25009, 25010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 25002, 25003, 25004, 25005, 25011, 25012, 25013 },
		regions = { },
		triggers = { "GROUP_LOAD_25015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_25014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_25014(context, evt)
	-- 将configid为 25011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002025, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_25015(context, evt)
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_25015(context, evt)
	-- 将configid为 25011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_25016(context, evt)
	if 25016 == evt.param1 then
	else
		if 0 == ScriptLib.TryRecordActivityPushTips(context, 2014016) then
			ScriptLib.TryRecordActivityPushTips(context, 2014016)
			
			ScriptLib.ShowClientTutorial(context, 1186, {})
		end
	end
	
	return 0
end

require "V2_8/CrowTheatre_Whodunit"