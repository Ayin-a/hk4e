-- 基础信息
local base_info = {
	group_id = 199002027
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 199002027,
	--起始操作台configID
	start_operator = 27008,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
		27001, 27002, 27003, 27004, 27005, 27006
	},
	--行动序列
	actions = 
	{
   		[1] = { config_id = 27001, reminder_id = 1111067, point_array = 0, point_id_list = 0, duration = 15},
   		[2] = { config_id = 27002, reminder_id = 1111069, point_array = 0, point_id_list = 0, duration = 4},
   		[3] = { config_id = 27003, reminder_id = 1111070, point_array = 900200065, point_id_list = {1,2}, duration = 9},
   		[4] = { config_id = 27002, reminder_id = 1111071, point_array = 0, point_id_list = 0, duration = 7},
   		[5] = { config_id = 27002, reminder_id = 1111072, point_array = 900200066, point_id_list = {1,2,3,4}, duration = 5},
   		[6] = { config_id = 27003, reminder_id = 0, point_array = 900200067, point_id_list = {1,2,3,4}, duration = 10},
   		[7] = { config_id = 27004, reminder_id = 0, point_array = 900200068, point_id_list = {1,2,3,5}, duration = 4},
                                [8] = { config_id = 27005, reminder_id = 0, 
point_array = 900200069, point_id_list = {1,2,3,5,6}, duration = 4},
                                [9] = { config_id = 27004, reminder_id = 1111073, 
point_array = 0, point_id_list = 0, duration = 6},
                                [10] = { config_id = 27005, reminder_id = 1111074, point_array = 0, point_id_list = 0, duration = 9},
                                [11] = { config_id = 27004, reminder_id = 0, point_array = 900200070, point_id_list = {1,2,3,4,5,6,7,8}, duration = 11},
                                [12] = { config_id = 27005, reminder_id = 0, point_array = 900200071, point_id_list = {1,2,3,4},duration=7},  		
   		[13] = { config_id = 27002, reminder_id = 1111075, point_array = 900200072, point_id_list = {1,2,3,4,5,6}, duration = 16},
   		[14] = { config_id = 27004, reminder_id = 0, point_array = 900200073, point_id_list = {1,2,3,4}, duration = 6},
  		[15] = { config_id = 27004, reminder_id = 0, point_array = 900200074, point_id_list = {1,2,3,4,5}, duration = 6},
   		[16] = { config_id = 27004, reminder_id = 1111078, point_array = 0, point_id_list = 0, duration = 3},
   		[17] = { config_id = 27004, reminder_id = 0, point_array = 900200075, point_id_list = {1,2}, duration = 3},
   		[18] = { config_id = 27005, reminder_id = 1111079, point_array = 900200076, point_id_list = {1,2}, duration = 3},
                                [19] = { config_id = 27006, reminder_id = 1111080, point_array = 900200077, point_id_list = {1,2}, duration = 5},
   		[20] = { config_id = 27005, reminder_id = 1111081, point_array = 900200078, point_id_list = {1,2,3,4,5,6}, duration = 6},
   		[21] = { config_id = 27004, reminder_id = 0, point_array = 900200079, point_id_list = {1,2,3,4,5,6}, duration = 2},
   		[22] = { config_id = 27006, reminder_id = 1111082, point_array = 900200080, point_id_list = {1,2,3,4}, duration = 11},
   		[23] = { config_id = 27002, reminder_id = 1111084, point_array = 900200081, point_id_list = {1,2}, duration = 8},
   		[24] = { config_id = 27006, reminder_id = 0, point_array = 900200082, point_id_list = {1,2,3,4}, duration = 9},
   		[25] = { config_id = 27006, reminder_id = 1111085, point_array = 0, point_id_list = 0, duration = 7},
   		[26] = { config_id = 27002, reminder_id = 1111086, point_array = 900200083, point_id_list = {1,2,3,4}, duration = 5},
   		[27] = { config_id = 27001, reminder_id = 1111087, point_array = 0, point_id_list = 0, duration = 8},

	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   
		2
	},
	--真正的凶手对应哪个操作台config_id
	answer = 27013,
	--玩法范围，主机出圈则重置
	play_region = 27007,

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
	[27001] = { config_id = 27001, gadget_id = 70310175, pos = { x = 426.537, y = 206.220, z = -470.270 }, rot = { x = 0.000, y = 181.976, z = 0.000 }, level = 20, area_id = 401 },
	-- 商人C
	[27002] = { config_id = 27002, gadget_id = 70310173, pos = { x = 423.124, y = 206.220, z = -468.712 }, rot = { x = 0.000, y = 328.217, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 小弟D
	[27003] = { config_id = 27003, gadget_id = 70310173, pos = { x = 422.204, y = 206.220, z = -468.358 }, rot = { x = 0.000, y = 6.373, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 窃贼「疾手」A
	[27004] = { config_id = 27004, gadget_id = 70310173, pos = { x = 419.572, y = 206.220, z = -471.432 }, rot = { x = 0.000, y = 280.943, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 窃贼「捷思」B
	[27005] = { config_id = 27005, gadget_id = 70310173, pos = { x = 418.532, y = 206.220, z = -471.245 }, rot = { x = 0.000, y = 146.525, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 守卫E
	[27006] = { config_id = 27006, gadget_id = 70310173, pos = { x = 430.484, y = 206.188, z = -477.222 }, rot = { x = 0.000, y = 185.427, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始案件
	[27008] = { config_id = 27008, gadget_id = 70360001, pos = { x = 426.537, y = 206.236, z = -470.270 }, rot = { x = 0.000, y = 181.976, z = 0.000 }, level = 20, worktop_config = { init_options = { 401 } }, area_id = 401 },
	-- 商人操作台
	[27009] = { config_id = 27009, gadget_id = 70360001, pos = { x = 422.952, y = 206.270, z = -483.652 }, rot = { x = 0.000, y = 309.313, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 小弟操作台
	[27010] = { config_id = 27010, gadget_id = 70360001, pos = { x = 422.476, y = 206.253, z = -478.602 }, rot = { x = 0.000, y = 103.625, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 窃贼「疾手」操作台
	[27011] = { config_id = 27011, gadget_id = 70360001, pos = { x = 441.352, y = 206.270, z = -476.965 }, rot = { x = 0.000, y = 92.420, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 窃贼「捷思」操作台
	[27012] = { config_id = 27012, gadget_id = 70360001, pos = { x = 440.502, y = 206.280, z = -478.051 }, rot = { x = 359.992, y = 257.136, z = 13.247 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 守卫操作台
	[27013] = { config_id = 27013, gadget_id = 70360001, pos = { x = 422.030, y = 206.270, z = -480.967 }, rot = { x = 0.000, y = 107.207, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	[27014] = { config_id = 27014, gadget_id = 70211112, pos = { x = 430.036, y = 206.360, z = -469.632 }, rot = { x = 0.000, y = 270.723, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[27007] = { config_id = 27007, shape = RegionShape.SPHERE, radius = 30, pos = { x = 424.249, y = 206.270, z = -481.604 }, area_id = 401 },
	[27017] = { config_id = 27017, shape = RegionShape.SPHERE, radius = 4, pos = { x = 428.251, y = 206.360, z = -469.632 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1027015, name = "VARIABLE_CHANGE_27015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_27015", action = "action_EVENT_VARIABLE_CHANGE_27015", trigger_count = 0 },
	{ config_id = 1027016, name = "GROUP_LOAD_27016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_27016", action = "action_EVENT_GROUP_LOAD_27016", trigger_count = 0 },
	{ config_id = 1027017, name = "ENTER_REGION_27017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_27017", trigger_count = 0 }
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
		gadgets = { 27001, 27002, 27003, 27004, 27005, 27006, 27008, 27014 },
		regions = { 27007, 27017 },
		triggers = { "VARIABLE_CHANGE_27015", "GROUP_LOAD_27016", "ENTER_REGION_27017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 27009, 27010, 27011, 27012, 27013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 27001, 27002, 27003, 27004, 27005, 27006, 27014 },
		regions = { },
		triggers = { "GROUP_LOAD_27016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_27015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_27015(context, evt)
	-- 将configid为 27014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002027, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_27016(context, evt)
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_27016(context, evt)
	-- 将configid为 27014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_27017(context, evt)
	if 27017 == evt.param1 then
	else
		if 0 == ScriptLib.TryRecordActivityPushTips(context, 2014016) then
			ScriptLib.TryRecordActivityPushTips(context, 2014016)
			
			ScriptLib.ShowClientTutorial(context, 1186, {})
		end
	end
	
	return 0
end

require "V2_8/CrowTheatre_Whodunit"