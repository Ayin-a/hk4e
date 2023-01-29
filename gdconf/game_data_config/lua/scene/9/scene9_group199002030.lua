-- 基础信息
local base_info = {
	group_id = 199002030
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 199002030,
	--起始操作台configID
	start_operator = 30006,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
		30001, 30002, 30003, 30004, 30005
	},
	--行动序列
	actions = 
	{
   		[1] = { config_id = 30001, reminder_id = 1111112, point_array = 0, point_id_list = 0, duration = 17},
   		[2] = { config_id = 30002, reminder_id = 1111114, point_array = 0, point_id_list = 0, duration = 5},
   		[3] = { config_id = 30003, reminder_id = 1111115, point_array = 0, point_id_list = 0, duration = 4},
   		[4] = { config_id = 30002, reminder_id = 1111116, point_array = 0, point_id_list = 0, duration = 5},
                                [5] = { config_id = 30004, reminder_id = 0, point_array = 900200115, point_id_list = {1,2,3,4}, duration = 5},
   		[6] = { config_id = 30003, reminder_id = 1111117, point_array = 900200116, point_id_list = {1,2}, duration = 10},
   		[7] = { config_id = 30004, reminder_id = 1111118, point_array = 900200117, point_id_list =  {1,2}, duration = 5},
                                [8] = { config_id = 30004, reminder_id = 0, point_array = 900200118, point_id_list = {1,2,3,4,5}, duration = 5},
   		[9] = { config_id = 30003, reminder_id = 1111119, point_array = 900200119, point_id_list = {1,2}, duration = 8},
   		[10] = { config_id = 30002, reminder_id = 1111120, point_array = 0, point_id_list = 0, duration = 8},
   		[11] = { config_id = 30003, reminder_id = 1111121, point_array = 0, point_id_list = 0, duration = 8},
   		[12] = { config_id = 30005, reminder_id = 1111122, point_array = 900200120, point_id_list = {1,2,3}, duration = 7},
   		[13] = { config_id = 30003, reminder_id = 1111123, point_array = 900200121, point_id_list = {1,2}, duration = 8},
   		[14] = { config_id = 30005, reminder_id = 1111124, point_array = 0, point_id_list = 0, duration = 7},
   		[15] = { config_id = 30005, reminder_id = 1111125, point_array = 900200122, point_id_list = {1,2,3,4}, duration = 3},
   		[16] = { config_id = 30002, reminder_id = 1111126, point_array = 900200123, point_id_list = {1,2,3,4}, duration = 3},
   		[17] = { config_id = 30002, reminder_id = 0, point_array = 900200124, point_id_list = {1,2,3}, duration = 2},
   		[18] = { config_id = 30005, reminder_id = 1111127, point_array = 900200125, point_id_list = {1,2,3}, duration = 6},
   		[19] = { config_id = 30003, reminder_id = 1111128, point_array = 900200126, point_id_list = {1,2,3,4}, duration = 11},
   		[20] = { config_id = 30001, reminder_id = 1111130, point_array = 0, point_id_list = 0, duration = 8},


	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   
		2
	},
	--真正的凶手对应哪个操作台config_id
	answer = 30010,
	--玩法范围，主机出圈则重置
	play_region = 30011,

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
	[30001] = { config_id = 30001, gadget_id = 70310175, pos = { x = 625.151, y = 235.411, z = -437.770 }, rot = { x = 0.000, y = 359.731, z = 0.000 }, level = 20, area_id = 401 },
	-- 走私商A
	[30002] = { config_id = 30002, gadget_id = 70310257, pos = { x = 620.232, y = 235.411, z = -437.618 }, rot = { x = 0.000, y = 180.103, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 盗宝团「鸦」B
	[30003] = { config_id = 30003, gadget_id = 70310259, pos = { x = 620.140, y = 235.411, z = -440.108 }, rot = { x = 0.000, y = 0.837, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 走私跟班C
	[30004] = { config_id = 30004, gadget_id = 70310257, pos = { x = 621.585, y = 235.411, z = -436.371 }, rot = { x = 0.000, y = 183.656, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 盗宝团「呱」D
	[30005] = { config_id = 30005, gadget_id = 70310259, pos = { x = 621.715, y = 235.411, z = -441.542 }, rot = { x = 0.000, y = 3.692, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始案件
	[30006] = { config_id = 30006, gadget_id = 70360001, pos = { x = 625.151, y = 235.411, z = -437.770 }, rot = { x = 0.000, y = 359.731, z = 0.000 }, level = 20, worktop_config = { init_options = { 401 } }, area_id = 401 },
	-- 走私商操作台
	[30007] = { config_id = 30007, gadget_id = 70360001, pos = { x = 618.614, y = 235.411, z = -436.602 }, rot = { x = 0.000, y = 87.596, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 盗宝团「鸦」操作台
	[30008] = { config_id = 30008, gadget_id = 70360001, pos = { x = 620.317, y = 235.411, z = -438.757 }, rot = { x = 0.000, y = 54.726, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 走私跟班操作台
	[30009] = { config_id = 30009, gadget_id = 70360001, pos = { x = 622.392, y = 235.411, z = -436.027 }, rot = { x = 0.000, y = 194.245, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 盗宝团「呱」操作台
	[30010] = { config_id = 30010, gadget_id = 70360001, pos = { x = 621.824, y = 235.411, z = -437.761 }, rot = { x = 0.000, y = 237.874, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	[30012] = { config_id = 30012, gadget_id = 70211112, pos = { x = 626.903, y = 235.485, z = -438.102 }, rot = { x = 0.000, y = 358.458, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[30011] = { config_id = 30011, shape = RegionShape.SPHERE, radius = 20, pos = { x = 612.655, y = 235.373, z = -438.961 }, area_id = 401 },
	[30015] = { config_id = 30015, shape = RegionShape.SPHERE, radius = 4, pos = { x = 625.081, y = 235.974, z = -437.086 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1030013, name = "VARIABLE_CHANGE_30013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_30013", action = "action_EVENT_VARIABLE_CHANGE_30013", trigger_count = 0 },
	{ config_id = 1030014, name = "GROUP_LOAD_30014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_30014", action = "action_EVENT_GROUP_LOAD_30014", trigger_count = 0 },
	{ config_id = 1030015, name = "ENTER_REGION_30015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_30015", trigger_count = 0 }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30012 },
		regions = { 30011, 30015 },
		triggers = { "VARIABLE_CHANGE_30013", "GROUP_LOAD_30014", "ENTER_REGION_30015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 30007, 30008, 30009, 30010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30012 },
		regions = { },
		triggers = { "GROUP_LOAD_30014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_30013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_30013(context, evt)
	-- 将configid为 30012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002030, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_30014(context, evt)
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_30014(context, evt)
	-- 将configid为 30012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_30015(context, evt)
	if 30015 == evt.param1 then
	else
		if 0 == ScriptLib.TryRecordActivityPushTips(context, 2014017) then
			ScriptLib.TryRecordActivityPushTips(context, 2014017)
			
			ScriptLib.ShowClientTutorial(context, 1187, {})
		end
	end
	
	return 0
end

require "V2_8/CrowTheatre_Whodunit"