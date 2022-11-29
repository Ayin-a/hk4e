-- 基础信息
local base_info = {
	group_id = 199002034
}

-- DEFS_MISCS
local        defs = 
{
	--幕布Group
	curtain_group = 199002035,
        --每个阶段的所有演员物件config_id。用于统一设置可拾取/可对话状态
        actor_list = 
        {
                [1] = 
                { 
                        [34005] = 1110684,
                        [34006] = 1110685,
                        [34007] = 1110686,
                        [34001] = 1110613,
                }, 
                [2] = 
                { 
                        [34006] = 1110685,
                        [34007] = 1110686,
                        [34001] = 1110617,
                }, 
                [3] = 
                { 
                        [34007] = 1110686,
                        [34001] = 1110622,
                },
        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [34005] = {0, 34036, 34037, 34037}, 
                [34006] = {0, 0, 34036, 34038}, 
                [34007] = {0, 0, 0, 34036},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 34001, reminder_id = 1110594, point_array = 0, point_id_list = 0, duration = 21},
                          [2] = { config_id = 34002, reminder_id = 1110596, point_array = 900200015, point_id_list = {1,2,3}, duration = 6},
                          [3] = { config_id = 34003, reminder_id = 1110597, point_array = 900200016, point_id_list = {1,2} , duration = 14},
                          [4] = { config_id = 34002, reminder_id = 1110600, point_array = 0, point_id_list = 0, duration = 25},
                          [5] = { config_id = 34003, reminder_id = 1110603, point_array = 0, point_id_list = 0, duration = 14},
                          [6] = { config_id = 34004, reminder_id = 1110606, point_array = 900200017, point_id_list = {1,2} , duration = 8},
                          [7] = { config_id = 34003, reminder_id = 1110607, point_array = 0, point_id_list = 0, duration = 16},
                          [8] = { config_id = 34001, reminder_id = 1110609, point_array = 0, point_id_list = 0, duration = 40},
                },

                {
                          [1] = { config_id = 34005, reminder_id = 1110614, point_array = 900200012, point_id_list = {1,2,3,4}, duration = 7},
                          [2] = { config_id = 34001, reminder_id = 1110615, point_array = 0, point_id_list = 0, duration = 19},
                },

                {
                          [1] = { config_id = 34006, reminder_id = 1110618, point_array = 900200013, point_id_list = {1,2,3,4}, duration = 16},
                          [2] = { config_id = 34001, reminder_id = 1110620, point_array = 0, point_id_list = 0, duration = 20},
                },
                {
                          [1] = { config_id = 34007, reminder_id = 1110623, point_array = 900200014, point_id_list = {1,2,3,4}, duration = 9},
                          [2] = { config_id = 34001, reminder_id = 1110624, point_array = 0, point_id_list = 0, duration = 7},
                          [3] = { config_id = 34002, reminder_id = 1110625, point_array = 0, point_id_list = 0, duration = 7},
                          [4] = { config_id = 34004, reminder_id = 1110626, point_array = 0, point_id_list = 0, duration = 6},
                          [5] = { config_id = 34002, reminder_id = 1110627, point_array = 0, point_id_list = 0, duration = 7},
                          [6] = { config_id = 34003, reminder_id = 1110628, point_array = 0, point_id_list = 0, duration = 11},
                          [7] = { config_id = 34005, reminder_id = 1110629, point_array = 0, point_id_list = 0, duration = 17},
                          [8] = { config_id = 34006, reminder_id = 1110631, point_array = 0, point_id_list = 0, duration = 12},
                          [9] = { config_id = 34007, reminder_id = 1110633, point_array = 0, point_id_list = 0, duration = 17},
                          [10] = { config_id = 34001, reminder_id = 1110635, point_array = 0, point_id_list = 0, duration = 14},
                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 34010, correct_gadget = 34005},
                   [2] = { add_suite = 4, correct_slot = 34010, correct_gadget = 34006},
                   [3] = { add_suite = 5, correct_slot = 34010, correct_gadget = 34007},
        },

no_actor = 34001

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
	-- 旁白
	[34001] = { config_id = 34001, gadget_id = 70310175, pos = { x = 577.999, y = 263.560, z = -535.676 }, rot = { x = 0.000, y = 26.929, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主
	[34002] = { config_id = 34002, gadget_id = 70310175, pos = { x = 581.765, y = 263.642, z = -538.220 }, rot = { x = 0.000, y = 30.238, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 国王
	[34003] = { config_id = 34003, gadget_id = 70310175, pos = { x = 583.553, y = 263.560, z = -538.183 }, rot = { x = 0.000, y = 358.683, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从
	[34004] = { config_id = 34004, gadget_id = 70310265, pos = { x = 580.435, y = 263.560, z = -537.604 }, rot = { x = 0.000, y = 28.522, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从甲
	[34005] = { config_id = 34005, gadget_id = 70310173, pos = { x = 580.002, y = 262.453, z = -526.408 }, rot = { x = 0.000, y = 168.634, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从乙
	[34006] = { config_id = 34006, gadget_id = 70310173, pos = { x = 586.877, y = 262.444, z = -526.432 }, rot = { x = 0.561, y = 196.386, z = 358.090 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从丙
	[34007] = { config_id = 34007, gadget_id = 70310173, pos = { x = 583.110, y = 262.452, z = -526.075 }, rot = { x = 0.000, y = 179.317, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 通用登场点
	[34008] = { config_id = 34008, gadget_id = 70310174, pos = { x = 588.485, y = 263.655, z = -537.344 }, rot = { x = 0.000, y = 269.125, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始剧目操作台
	[34009] = { config_id = 34009, gadget_id = 70360001, pos = { x = 578.162, y = 263.823, z = -535.587 }, rot = { x = 0.000, y = 26.929, z = 0.000 }, level = 20, area_id = 401 },
	-- 通用登场点操作台
	[34010] = { config_id = 34010, gadget_id = 70360001, pos = { x = 588.774, y = 263.631, z = -537.350 }, rot = { x = 0.000, y = 267.939, z = 0.000 }, level = 20, area_id = 401 },
	[34013] = { config_id = 34013, gadget_id = 70310398, pos = { x = 588.774, y = 263.631, z = -537.350 }, rot = { x = 0.000, y = 267.939, z = 0.000 }, level = 20, area_id = 401 },
	[34014] = { config_id = 34014, gadget_id = 70310398, pos = { x = 588.774, y = 263.631, z = -537.350 }, rot = { x = 0.000, y = 267.939, z = 0.000 }, level = 20, area_id = 401 },
	[34015] = { config_id = 34015, gadget_id = 70310398, pos = { x = 588.774, y = 263.631, z = -537.350 }, rot = { x = 0.000, y = 267.939, z = 0.000 }, level = 20, area_id = 401 },
	[34016] = { config_id = 34016, gadget_id = 70310473, pos = { x = 583.086, y = 262.560, z = -525.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34017] = { config_id = 34017, gadget_id = 70310473, pos = { x = 583.086, y = 262.560, z = -525.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34018] = { config_id = 34018, gadget_id = 70310473, pos = { x = 583.086, y = 262.560, z = -525.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34019] = { config_id = 34019, gadget_id = 70310473, pos = { x = 586.850, y = 262.560, z = -526.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34020] = { config_id = 34020, gadget_id = 70310473, pos = { x = 586.850, y = 262.560, z = -526.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34021] = { config_id = 34021, gadget_id = 70310473, pos = { x = 580.059, y = 262.560, z = -526.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34022] = { config_id = 34022, gadget_id = 70310310, pos = { x = 588.145, y = 263.614, z = -536.067 }, rot = { x = 0.000, y = 359.807, z = 0.000 }, level = 20, area_id = 401 },
	[34023] = { config_id = 34023, gadget_id = 70310310, pos = { x = 585.966, y = 263.615, z = -536.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34024] = { config_id = 34024, gadget_id = 70310310, pos = { x = 583.737, y = 263.628, z = -536.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[34026] = { config_id = 34026, gadget_id = 70310310, pos = { x = 586.951, y = 263.612, z = -537.376 }, rot = { x = 0.000, y = 89.220, z = 0.000 }, level = 20, area_id = 401 },
	[34027] = { config_id = 34027, gadget_id = 70310310, pos = { x = 584.736, y = 263.609, z = -537.401 }, rot = { x = 0.000, y = 88.957, z = 0.000 }, level = 20, area_id = 401 },
	[34028] = { config_id = 34028, gadget_id = 70310311, pos = { x = 588.148, y = 263.609, z = -537.263 }, rot = { x = 0.000, y = 88.937, z = 0.000 }, level = 20, area_id = 401 },
	[34029] = { config_id = 34029, gadget_id = 70310311, pos = { x = 585.957, y = 263.605, z = -537.302 }, rot = { x = 0.000, y = 89.842, z = 0.000 }, level = 20, area_id = 401 },
	[34030] = { config_id = 34030, gadget_id = 70310312, pos = { x = 583.831, y = 263.623, z = -537.375 }, rot = { x = 0.000, y = 178.861, z = 0.000 }, level = 20, area_id = 401 },
	[34031] = { config_id = 34031, gadget_id = 70310309, pos = { x = 581.796, y = 263.614, z = -537.034 }, rot = { x = 0.000, y = 359.807, z = 0.000 }, level = 20, area_id = 401 },
	[34032] = { config_id = 34032, gadget_id = 70211111, pos = { x = 578.975, y = 262.560, z = -531.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	[34036] = { config_id = 34036, gadget_id = 70310189, pos = { x = 588.774, y = 263.631, z = -537.350 }, rot = { x = 0.000, y = 267.939, z = 0.000 }, level = 1, area_id = 401 },
	[34037] = { config_id = 34037, gadget_id = 70310189, pos = { x = 583.718, y = 263.631, z = -535.466 }, rot = { x = 0.000, y = 0.218, z = 0.000 }, level = 1, area_id = 401 },
	[34038] = { config_id = 34038, gadget_id = 70310189, pos = { x = 585.935, y = 263.631, z = -535.362 }, rot = { x = 0.000, y = 358.445, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	-- 离开即重置剧目
	[34011] = { config_id = 34011, shape = RegionShape.SPHERE, radius = 25, pos = { x = 583.499, y = 260.996, z = -526.442 }, area_id = 401 },
	[34035] = { config_id = 34035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 582.088, y = 260.996, z = -528.637 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 离开即重置剧目
	{ config_id = 1034011, name = "ENTER_REGION_34011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 完成通知任务
	{ config_id = 1034012, name = "VARIABLE_CHANGE_34012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34012", action = "action_EVENT_VARIABLE_CHANGE_34012", trigger_count = 0 },
	{ config_id = 1034033, name = "VARIABLE_CHANGE_34033", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_34033", action = "action_EVENT_VARIABLE_CHANGE_34033", trigger_count = 0 },
	{ config_id = 1034034, name = "GROUP_LOAD_34034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_34034", action = "action_EVENT_GROUP_LOAD_34034", trigger_count = 0 },
	{ config_id = 1034035, name = "ENTER_REGION_34035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "play_state", value = 4, no_refresh = true }
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
		gadgets = { },
		regions = { 34035 },
		triggers = { "VARIABLE_CHANGE_34033", "GROUP_LOAD_34034", "ENTER_REGION_34035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 34001, 34002, 34003, 34004, 34008, 34009, 34022, 34023, 34024, 34026, 34027, 34028, 34029, 34030, 34031 },
		regions = { 34011 },
		triggers = { "ENTER_REGION_34011", "VARIABLE_CHANGE_34012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 34010, 34013, 34016, 34020, 34021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 34010, 34014, 34017, 34019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 34010, 34015, 34018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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
function condition_EVENT_VARIABLE_CHANGE_34012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "firstdramafinish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appear", 1, 199002188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34033(context, evt)
	-- 创建id为34032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 34032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_34034(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_34034(context, evt)
	-- 创建id为34032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 34032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"