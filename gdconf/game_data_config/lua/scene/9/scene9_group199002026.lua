-- 基础信息
local base_info = {
	group_id = 199002026
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 199002026,
	--起始操作台configID
	start_operator = 26005,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
		26001, 26002, 26003, 26004
	},
	--行动序列
	actions = 
	{
   		[1] = { config_id = 26001, reminder_id = 1111055, point_array = 0, point_id_list = 0, duration = 14},
   		[2] = { config_id = 26002, reminder_id = 1111057, point_array = 0, point_id_list = 0, duration = 5},
   		[3] = { config_id = 26003, reminder_id = 1111058, point_array = 900200102, point_id_list ={1,2,3,4,5}, duration = 10},
   		[4] = { config_id = 26002, reminder_id = 1111059, point_array = 900200103, point_id_list = {1,2,3,4,5}, duration = 9},
   		[5] = { config_id = 26003, reminder_id = 0, point_array = 900200104, point_id_list = {1,2,3,4}, duration = 7},
   		[6] = { config_id = 26003, reminder_id = 1111060, point_array = 0, point_id_list = 0, duration = 8},
   		[7] = { config_id = 26004, reminder_id = 1111061, point_array = 900200105, point_id_list = {1,2,3}, duration = 7},
   		[8] = { config_id = 26003, reminder_id = 1111062, point_array = 0, point_id_list = 0, duration = 6},
   		[9] = { config_id = 26004, reminder_id = 1111063, point_array = 0, point_id_list = 0, duration = 15},
   		[10] = { config_id = 26003, reminder_id = 1111065, point_array = 900200106, point_id_list = {1,2,3}, duration = 3},
   		[11] = { config_id = 26001, reminder_id = 1111066, point_array = 0, point_id_list = 0, duration = 8},
	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   
		2
	},
	--真正的凶手对应哪个操作台config_id
	answer = 26006,
	--玩法范围，主机出圈则重置
	play_region = 26009,

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
	[26001] = { config_id = 26001, gadget_id = 70310175, pos = { x = 396.150, y = 122.721, z = -521.151 }, rot = { x = 0.000, y = 174.066, z = 0.000 }, level = 20, area_id = 401 },
	-- 休闲鸦
	[26002] = { config_id = 26002, gadget_id = 70310173, pos = { x = 391.641, y = 122.721, z = -523.178 }, rot = { x = 0.000, y = 210.865, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 替班守卫
	[26003] = { config_id = 26003, gadget_id = 70310173, pos = { x = 393.942, y = 122.775, z = -525.722 }, rot = { x = 0.000, y = 179.466, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 摸鱼守卫
	[26004] = { config_id = 26004, gadget_id = 70310173, pos = { x = 402.449, y = 122.801, z = -523.075 }, rot = { x = 348.872, y = 80.906, z = 0.001 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始演出
	[26005] = { config_id = 26005, gadget_id = 70360001, pos = { x = 396.134, y = 122.826, z = -521.127 }, rot = { x = 0.000, y = 174.066, z = 0.000 }, level = 20, worktop_config = { init_options = { 401 } }, area_id = 401 },
	-- 休闲鸦操作台
	[26006] = { config_id = 26006, gadget_id = 70360001, pos = { x = 393.826, y = 122.917, z = -525.920 }, rot = { x = 0.000, y = 182.014, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 替班守卫操作台
	[26007] = { config_id = 26007, gadget_id = 70360001, pos = { x = 401.974, y = 122.775, z = -520.983 }, rot = { x = 0.000, y = 235.591, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 摸鱼守卫操作台
	[26008] = { config_id = 26008, gadget_id = 70360001, pos = { x = 402.449, y = 122.801, z = -523.075 }, rot = { x = 359.971, y = 357.908, z = 0.235 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	[26010] = { config_id = 26010, gadget_id = 70211102, pos = { x = 395.834, y = 122.866, z = -519.557 }, rot = { x = 0.000, y = 161.427, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[26009] = { config_id = 26009, shape = RegionShape.SPHERE, radius = 17, pos = { x = 398.173, y = 122.725, z = -522.159 }, area_id = 401 },
	[26013] = { config_id = 26013, shape = RegionShape.SPHERE, radius = 4, pos = { x = 395.834, y = 122.866, z = -519.557 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1026011, name = "VARIABLE_CHANGE_26011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_26011", action = "action_EVENT_VARIABLE_CHANGE_26011", trigger_count = 0 },
	{ config_id = 1026012, name = "GROUP_LOAD_26012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_26012", action = "action_EVENT_GROUP_LOAD_26012", trigger_count = 0 },
	{ config_id = 1026013, name = "ENTER_REGION_26013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_26013", trigger_count = 0 }
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
		gadgets = { 26001, 26002, 26003, 26004, 26005, 26010 },
		regions = { 26009, 26013 },
		triggers = { "VARIABLE_CHANGE_26011", "GROUP_LOAD_26012", "ENTER_REGION_26013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 26006, 26007, 26008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 26001, 26002, 26003, 26004, 26010 },
		regions = { },
		triggers = { "GROUP_LOAD_26012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_26011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_26011(context, evt)
	-- 将configid为 26010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002026, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_26012(context, evt)
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_26012(context, evt)
	-- 将configid为 26010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_26013(context, evt)
	if 26013 == evt.param1 then
	else
		if 0 == ScriptLib.TryRecordActivityPushTips(context, 2014016) then
			ScriptLib.TryRecordActivityPushTips(context, 2014016)
			
			ScriptLib.ShowClientTutorial(context, 1186, {})
		end
	end
	
	return 0
end

require "V2_8/CrowTheatre_Whodunit"