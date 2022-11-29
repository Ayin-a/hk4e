-- 基础信息
local base_info = {
	group_id = 199002040
}

-- DEFS_MISCS
local        defs = 
{
	--幕布Group
	curtain_group = 199002077,
        --每个阶段的所有演员物件config_id。用于统一设置可拾取/可对话状态
        actor_list = 
        {
                [1] = 
                { 
                        [40001] = 1110862,
                        [40002] = 1110886,
                        [40003] = 1110887,
                        [40004] = 1110888,
                },
                [2] = 
                { 
                        [40001] = 1110867,
                        [40003] = 1110887,
                        [40004] = 1110888,
                },
                [3] = 
                { 
                        [40001] = 1110873,
                        [40004] = 1110888,
                },
        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [40002] = {0, 40034, 40031, 40031}, 
                [40003] = {0, 0, 40035, 40032}, 
                [40004] = {0, 0, 0, 40035},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 40001, reminder_id = 1110862, point_array = 0, point_id_list = 0, duration = 9},
                        
                },
                {
                          [1] = { config_id = 40002, reminder_id = 1110863, point_array = 900200056, point_id_list = {1,2,3,4,5,6,7}, duration = 30},
                          [2] = { config_id = 40001, reminder_id = 1110867, point_array = 0, point_id_list = 0, duration = 11},

                },
                {
                          [1] = { config_id = 40003, reminder_id = 1110868, point_array = 900200057, point_id_list = {1,2,3}, duration = 19},
                          [2] = { config_id = 40002, reminder_id = 1110871, point_array = 0, point_id_list = 0, duration = 21},
                          [3] = { config_id = 40001, reminder_id = 1110873, point_array = 0, point_id_list = 0, duration = 8},

                },
                {
                          [1] = { config_id = 40004, reminder_id = 1110874, point_array = 900200058, point_id_list = {1,2}, duration = 6},
                          [2] = { config_id = 40003, reminder_id = 1110875, point_array = 0, point_id_list = 0, duration = 10},
                          [3] = { config_id = 40004, reminder_id = 1110877, point_array = 900200059, point_id_list = {1,2,3,4,5}, duration = 7},
                          [4] = { config_id = 40002, reminder_id = 1110878, point_array = 0, point_id_list = 0, duration = 5},
                          [5] = { config_id = 40002, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [6] = { config_id = 40001, reminder_id = 1110879, point_array = 0, point_id_list = 0, duration = 7},
                          [7] = { config_id = 40003, reminder_id = 0, point_array = 900200060, point_id_list = {1,2,3,4,5,6}, duration = 4},
                          [8] = { config_id = 40004, reminder_id = 1110880, point_array = 900200061, point_id_list = {1,2}, duration = 22},
                          [9] = { config_id = 40001, reminder_id = 1110883, point_array = 0, point_id_list = 0, duration = 27},
                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 40005, correct_gadget = 40002},
                   [2] = { add_suite = 4, correct_slot = 40006, correct_gadget = 40003},
                   [3] = { add_suite = 5, correct_slot = 40006, correct_gadget = 40004},
        },

no_actor = 40001

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
	[40001] = { config_id = 40001, gadget_id = 70310175, pos = { x = 493.884, y = 128.700, z = -440.099 }, rot = { x = 0.000, y = 117.570, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙
	[40002] = { config_id = 40002, gadget_id = 70310173, pos = { x = 512.468, y = 128.153, z = -441.703 }, rot = { x = 0.000, y = 254.503, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从
	[40003] = { config_id = 40003, gadget_id = 70310265, pos = { x = 512.946, y = 128.119, z = -445.458 }, rot = { x = 0.000, y = 265.557, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 公主
	[40004] = { config_id = 40004, gadget_id = 70310173, pos = { x = 516.865, y = 128.087, z = -449.407 }, rot = { x = 0.000, y = 275.036, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 恶龙登场点操作台
	[40005] = { config_id = 40005, gadget_id = 70360001, pos = { x = 489.696, y = 128.839, z = -445.437 }, rot = { x = 0.000, y = 86.349, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主，忠诚的侍从登场点操作台
	[40006] = { config_id = 40006, gadget_id = 70360001, pos = { x = 491.198, y = 128.853, z = -453.088 }, rot = { x = 0.000, y = 356.188, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙登场点操作台
	[40008] = { config_id = 40008, gadget_id = 70310174, pos = { x = 489.951, y = 128.772, z = -445.406 }, rot = { x = 0.000, y = 85.061, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主，忠诚的侍从登场点
	[40009] = { config_id = 40009, gadget_id = 70310174, pos = { x = 491.196, y = 128.844, z = -452.955 }, rot = { x = 0.000, y = 356.336, z = 0.000 }, level = 20, area_id = 401 },
	[40010] = { config_id = 40010, gadget_id = 70310473, pos = { x = 516.825, y = 127.577, z = -449.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始演出
	[40012] = { config_id = 40012, gadget_id = 70360001, pos = { x = 495.685, y = 128.700, z = -443.626 }, rot = { x = 0.000, y = 117.570, z = 0.000 }, level = 20, area_id = 401 },
	[40013] = { config_id = 40013, gadget_id = 70310473, pos = { x = 512.964, y = 127.755, z = -445.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[40014] = { config_id = 40014, gadget_id = 70310473, pos = { x = 512.499, y = 127.668, z = -441.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[40015] = { config_id = 40015, gadget_id = 70310398, pos = { x = 489.666, y = 128.815, z = -445.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[40016] = { config_id = 40016, gadget_id = 70310398, pos = { x = 491.292, y = 128.854, z = -453.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[40017] = { config_id = 40017, gadget_id = 70310310, pos = { x = 490.827, y = 128.814, z = -445.348 }, rot = { x = 0.000, y = 85.678, z = 0.000 }, level = 20, area_id = 401 },
	[40018] = { config_id = 40018, gadget_id = 70310312, pos = { x = 492.058, y = 128.814, z = -445.302 }, rot = { x = 0.000, y = 354.851, z = 0.000 }, level = 20, area_id = 401 },
	[40019] = { config_id = 40019, gadget_id = 70310310, pos = { x = 492.265, y = 128.814, z = -446.485 }, rot = { x = 0.000, y = 174.760, z = 0.000 }, level = 20, area_id = 401 },
	[40020] = { config_id = 40020, gadget_id = 70310312, pos = { x = 492.470, y = 128.814, z = -447.654 }, rot = { x = 0.000, y = 174.243, z = 0.000 }, level = 20, area_id = 401 },
	[40021] = { config_id = 40021, gadget_id = 70310310, pos = { x = 493.697, y = 128.814, z = -447.561 }, rot = { x = 0.000, y = 82.797, z = 0.000 }, level = 20, area_id = 401 },
	[40022] = { config_id = 40022, gadget_id = 70310311, pos = { x = 491.079, y = 128.814, z = -450.980 }, rot = { x = 0.000, y = 174.027, z = 0.000 }, level = 20, area_id = 401 },
	[40023] = { config_id = 40023, gadget_id = 70310310, pos = { x = 491.104, y = 128.825, z = -452.092 }, rot = { x = 0.000, y = 174.771, z = 0.000 }, level = 20, area_id = 401 },
	[40024] = { config_id = 40024, gadget_id = 70310310, pos = { x = 490.907, y = 128.814, z = -450.001 }, rot = { x = 0.000, y = 355.123, z = 0.000 }, level = 20, area_id = 401 },
	[40025] = { config_id = 40025, gadget_id = 70310309, pos = { x = 492.678, y = 128.814, z = -450.826 }, rot = { x = 0.000, y = 84.647, z = 0.000 }, level = 20, area_id = 401 },
	[40026] = { config_id = 40026, gadget_id = 70211121, pos = { x = 499.806, y = 126.935, z = -440.984 }, rot = { x = 0.000, y = 110.716, z = 3.991 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	[40029] = { config_id = 40029, gadget_id = 70310312, pos = { x = 494.540, y = 128.814, z = -450.553 }, rot = { x = 0.000, y = 85.803, z = 0.000 }, level = 20, area_id = 401 },
	[40030] = { config_id = 40030, gadget_id = 70310310, pos = { x = 494.497, y = 128.814, z = -449.354 }, rot = { x = 0.000, y = 355.123, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙站点
	[40031] = { config_id = 40031, gadget_id = 70310189, pos = { x = 494.441, y = 128.839, z = -447.467 }, rot = { x = 0.000, y = 103.362, z = 0.000 }, level = 1, area_id = 401 },
	-- 侍从站点
	[40032] = { config_id = 40032, gadget_id = 70310189, pos = { x = 490.877, y = 128.844, z = -449.897 }, rot = { x = 0.000, y = 55.421, z = 0.000 }, level = 1, area_id = 401 },
	-- 恶龙起始
	[40034] = { config_id = 40034, gadget_id = 70310189, pos = { x = 489.696, y = 128.839, z = -445.437 }, rot = { x = 0.000, y = 86.349, z = 0.000 }, level = 1, area_id = 401 },
	-- 侍从/公主起始点
	[40035] = { config_id = 40035, gadget_id = 70310189, pos = { x = 491.198, y = 128.853, z = -453.088 }, rot = { x = 0.000, y = 356.188, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[40011] = { config_id = 40011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 501.667, y = 124.761, z = -449.006 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 终幕完成后通知任务
	{ config_id = 1040007, name = "VARIABLE_CHANGE_40007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40007", action = "action_EVENT_VARIABLE_CHANGE_40007", trigger_count = 0 },
	{ config_id = 1040027, name = "VARIABLE_CHANGE_40027", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_40027", action = "action_EVENT_VARIABLE_CHANGE_40027", trigger_count = 0 },
	{ config_id = 1040028, name = "GROUP_LOAD_40028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_40028", action = "action_EVENT_GROUP_LOAD_40028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "play_state", value = 4, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1040033, name = "VARIABLE_CHANGE_40033", event = EventType.EVENT_VARIABLE_CHANGE, source = "play_state", condition = "condition_EVENT_VARIABLE_CHANGE_40033", action = "action_EVENT_VARIABLE_CHANGE_40033", trigger_count = 0 }
	}
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
		regions = { 40011 },
		triggers = { "VARIABLE_CHANGE_40007", "VARIABLE_CHANGE_40027", "GROUP_LOAD_40028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 40001, 40008, 40009, 40012, 40017, 40018, 40019, 40020, 40021, 40022, 40023, 40024, 40025, 40029, 40030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 40005, 40010, 40013, 40014, 40015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 40006, 40010, 40013, 40016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 40006, 40010, 40016 },
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
function condition_EVENT_VARIABLE_CHANGE_40007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finaldramafinish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appear", 1, 199002192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40027(context, evt)
	-- 创建id为40026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 40026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_40028(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_40028(context, evt)
	-- 创建id为40026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 40026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"