-- 基础信息
local base_info = {
	group_id = 199002045
}

-- DEFS_MISCS
local        defs = 
{
	--幕布Group
	curtain_group = 199002075,
        --每个阶段的所有演员物件config_id。用于统一设置可拾取/可对话状态
        actor_list = 
        {
                [1] = 
                { 
                        [45001] = 1110788,
                        [45002] = 1110820,
                        [45003] = 1110821,
                        [45004] = 1110822,
                        [45031] = 1111307,
                },
                [2] = 
                { 
                        [45001] = 1110796,
                        [45003] = 1110821,
                        [45004] = 1110822,
                        [45031] = 1111307,
                },
                [3] = 
                { 
                        [45001] = 1110807,
                        [45004] = 1110822,
                        [45031] = 1111307,
                },
        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                        [45002] = {0, 45033,  45033,  45033},
                        [45003] = {0, 0, 45034, -1},
                        [45004] = {0, 0, 0, 45034},
	        [45031] = {0, 0, 0, 0},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 45001, reminder_id = 1110786, point_array = 0, point_id_list = 0, duration = 22},
                         
                        
                },
                {
                          [1] = { config_id = 45002, reminder_id = 1110789, point_array = 0, point_id_list = 0, duration = 29},
                          [2] = { config_id = 45005, reminder_id = 1110793, point_array = 0, point_id_list = 0, duration = 16},
                          [3] = { config_id = 45001, reminder_id = 1110795, point_array = 0, point_id_list = 0, duration = 20},


                },
                {
                          [1] = { config_id = 45003, reminder_id = 1110797, point_array = 900200045, point_id_list = {1,2,3,4}, duration = 8},
                          [2] = { config_id = 45003, reminder_id = 1110798, point_array = 0, point_id_list = 0, duration = 8},
                          [3] = { config_id = 45003, reminder_id = 0, point_array = 900200046, point_id_list = {1,2,3}, duration = 3},
                          [4] = { config_id = 45001, reminder_id = 1110799, point_array = 0, point_id_list = 0, duration = 22},
                          [5] = { config_id = 45005, reminder_id = 1110802, point_array = 0, point_id_list = 0, duration = 19},
                          [6] = { config_id = 45002, reminder_id = 1110804, point_array = 0, point_id_list = 0, duration = 8},
                          [7] = { config_id = 45005, reminder_id = 1110805, point_array = 0, point_id_list = 0, duration = 16},
                          [8] = { config_id = 45001, reminder_id = 1110807, point_array = 0, point_id_list = 0, duration = 10},

                },
                {
                          [1] = { config_id = 45004, reminder_id = 1110808, point_array = 900200047, point_id_list = {1,2,3,4}, duration =16},
                          [2] = { config_id = 45005, reminder_id = 1110810, point_array = 900200048, point_id_list = {1,2}, duration = 8},
                          [3] = { config_id = 45002, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [4] = { config_id = 45001, reminder_id = 1110811, point_array = 0, point_id_list = 0, duration = 8},
                          [5] = { config_id = 45005, reminder_id = 1110812, point_array = 0, point_id_list = 0, duration = 18},
                          [6] = { config_id = 45006, reminder_id = 1110814, point_array = 900200049, point_id_list = {1,2}, duration = 7},
                          [7] = { config_id = 45007, reminder_id = 1110815, point_array = 900200050, point_id_list = {1,2}, duration = 9},
                          [8] = { config_id = 45001, reminder_id = 1110816, point_array = 0, point_id_list = 0, duration = 10},

                },
        },
        spec_actions = 
        {
                
                 [1] = { config_id = 45031, reminder_id = 1111308, point_array = {900200138}, point_id_list = {1,2,3,4,5,6}, duration = 4},
                 [2] = { config_id = 45031, reminder_id = 1111308, point_array = {900200138}, point_id_list = {1,2,3,4,5,6}, duration = 4},
                 [3] = { config_id = 45031, reminder_id = 1111308, point_array = {900200138}, point_id_list = {1,2,3,4,5,6}, duration = 4},
                
        },
        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 45009, correct_gadget = 45002, spec = 45031},
                   [2] = { add_suite = 4, correct_slot = 45010, correct_gadget = 45003, spec = 45031},
                   [3] = { add_suite = 5, correct_slot = 45010, correct_gadget = 45004, spec = 45031},
        },
no_actor = 45001

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
	[45001] = { config_id = 45001, gadget_id = 70310175, pos = { x = 456.538, y = 122.197, z = -721.906 }, rot = { x = 0.000, y = 95.716, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙
	[45002] = { config_id = 45002, gadget_id = 70310173, pos = { x = 472.091, y = 121.098, z = -726.963 }, rot = { x = 0.000, y = 244.776, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 农夫
	[45003] = { config_id = 45003, gadget_id = 70310173, pos = { x = 470.326, y = 121.104, z = -724.040 }, rot = { x = 0.000, y = 235.091, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 孩童
	[45004] = { config_id = 45004, gadget_id = 70310173, pos = { x = 468.588, y = 121.062, z = -721.148 }, rot = { x = 0.000, y = 231.774, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 恶龙
	[45005] = { config_id = 45005, gadget_id = 70310173, pos = { x = 458.137, y = 122.345, z = -725.728 }, rot = { x = 0.000, y = 150.883, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从
	[45006] = { config_id = 45006, gadget_id = 70310265, pos = { x = 457.798, y = 122.201, z = -728.757 }, rot = { x = 0.000, y = 62.387, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 公主
	[45007] = { config_id = 45007, gadget_id = 70310173, pos = { x = 458.815, y = 122.201, z = -730.442 }, rot = { x = 0.000, y = 55.004, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始演出
	[45008] = { config_id = 45008, gadget_id = 70360001, pos = { x = 458.457, y = 122.499, z = -722.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙登台操作台
	[45009] = { config_id = 45009, gadget_id = 70360001, pos = { x = 462.092, y = 122.302, z = -732.698 }, rot = { x = 0.000, y = 331.531, z = 0.000 }, level = 20, area_id = 401 },
	-- 农夫，孩童登场操作台
	[45010] = { config_id = 45010, gadget_id = 70360001, pos = { x = 457.047, y = 122.297, z = -733.123 }, rot = { x = 0.000, y = 59.548, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙登台坐点
	[45012] = { config_id = 45012, gadget_id = 70310174, pos = { x = 461.947, y = 122.292, z = -732.399 }, rot = { x = 0.000, y = 331.908, z = 0.000 }, level = 20, area_id = 401 },
	-- 农夫，孩童登台坐点
	[45013] = { config_id = 45013, gadget_id = 70310174, pos = { x = 457.275, y = 122.307, z = -732.991 }, rot = { x = 0.000, y = 62.094, z = 0.000 }, level = 20, area_id = 401 },
	[45016] = { config_id = 45016, gadget_id = 70310473, pos = { x = 472.091, y = 120.000, z = -726.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[45017] = { config_id = 45017, gadget_id = 70310473, pos = { x = 470.326, y = 120.000, z = -724.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[45018] = { config_id = 45018, gadget_id = 70310473, pos = { x = 468.588, y = 120.000, z = -721.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[45019] = { config_id = 45019, gadget_id = 70310398, pos = { x = 462.151, y = 122.314, z = -732.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[45020] = { config_id = 45020, gadget_id = 70310398, pos = { x = 457.016, y = 122.314, z = -733.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[45021] = { config_id = 45021, gadget_id = 70310309, pos = { x = 458.503, y = 122.269, z = -732.324 }, rot = { x = 0.000, y = 62.120, z = 0.000 }, level = 20, area_id = 401 },
	[45022] = { config_id = 45022, gadget_id = 70310311, pos = { x = 460.141, y = 122.310, z = -731.463 }, rot = { x = 0.000, y = 330.640, z = 0.000 }, level = 20, area_id = 401 },
	[45023] = { config_id = 45023, gadget_id = 70310310, pos = { x = 459.656, y = 122.314, z = -730.414 }, rot = { x = 0.000, y = 330.990, z = 0.000 }, level = 20, area_id = 401 },
	[45024] = { config_id = 45024, gadget_id = 70310309, pos = { x = 461.182, y = 122.310, z = -733.116 }, rot = { x = 0.000, y = 150.384, z = 0.000 }, level = 20, area_id = 401 },
	[45025] = { config_id = 45025, gadget_id = 70310310, pos = { x = 462.387, y = 122.314, z = -735.279 }, rot = { x = 0.000, y = 151.771, z = 0.000 }, level = 20, area_id = 401 },
	[45026] = { config_id = 45026, gadget_id = 70310309, pos = { x = 458.846, y = 122.314, z = -726.935 }, rot = { x = 0.000, y = 330.032, z = 0.000 }, level = 20, area_id = 401 },
	[45027] = { config_id = 45027, gadget_id = 70310309, pos = { x = 460.434, y = 122.314, z = -729.688 }, rot = { x = 0.000, y = 150.640, z = 0.000 }, level = 20, area_id = 401 },
	[45028] = { config_id = 45028, gadget_id = 70211121, pos = { x = 461.997, y = 121.067, z = -723.053 }, rot = { x = 0.000, y = 78.618, z = 4.200 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	[45031] = { config_id = 45031, gadget_id = 70310173, pos = { x = 463.843, y = 120.777, z = -720.286 }, rot = { x = 0.000, y = 193.422, z = 0.000 }, level = 20, start_route = false, is_use_point_array = true, area_id = 401 },
	[45032] = { config_id = 45032, gadget_id = 70310473, pos = { x = 463.826, y = 120.247, z = -720.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 丙站点1
	[45033] = { config_id = 45033, gadget_id = 70310189, pos = { x = 462.092, y = 122.302, z = -732.698 }, rot = { x = 0.000, y = 331.531, z = 0.000 }, level = 1, area_id = 401 },
	-- 农夫起始点
	[45034] = { config_id = 45034, gadget_id = 70310189, pos = { x = 457.047, y = 122.297, z = -733.123 }, rot = { x = 0.000, y = 59.548, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[45011] = { config_id = 45011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 474.921, y = 118.568, z = -719.588 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 完成间幕3时改juchang1变量
	{ config_id = 1045014, name = "VARIABLE_CHANGE_45014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_45014", action = "action_EVENT_VARIABLE_CHANGE_45014", trigger_count = 0 },
	-- 间幕3完成后通报任务
	{ config_id = 1045015, name = "VARIABLE_CHANGE_45015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_45015", action = "action_EVENT_VARIABLE_CHANGE_45015", trigger_count = 0 },
	{ config_id = 1045029, name = "VARIABLE_CHANGE_45029", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_45029", action = "action_EVENT_VARIABLE_CHANGE_45029", trigger_count = 0 },
	{ config_id = 1045030, name = "GROUP_LOAD_45030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_45030", action = "action_EVENT_GROUP_LOAD_45030", trigger_count = 0 }
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
		regions = { 45011 },
		triggers = { "VARIABLE_CHANGE_45015", "VARIABLE_CHANGE_45029", "GROUP_LOAD_45030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45001, 45005, 45006, 45007, 45008, 45012, 45013, 45021, 45022, 45023, 45024, 45025, 45026, 45027 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_45014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 45009, 45016, 45017, 45018, 45019, 45032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 45010, 45017, 45018, 45020, 45032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 45010, 45018, 45020, 45032 },
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
function condition_EVENT_VARIABLE_CHANGE_45014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_45014(context, evt)
	-- 针对当前group内变量名为 "dramamiddle" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "dramamiddle", 1, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu2", 0, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu3", 0, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu1", 1, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appear", 1, 199002191) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 199002187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_45015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_45015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "drama2.3") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_45029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_45029(context, evt)
	-- 创建id为45028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 45028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_45030(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_45030(context, evt)
	-- 创建id为45028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 45028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"