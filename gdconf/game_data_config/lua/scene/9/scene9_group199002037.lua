-- 基础信息
local base_info = {
	group_id = 199002037
}

-- DEFS_MISCS
local        defs = 
{
	--幕布Group
	curtain_group = 199002071,
        --每个阶段的所有演员物件config_id。用于统一设置可拾取/可对话状态
        actor_list = 
        {
                [1] = 
                { 
                        [37001] = 1110659,
                        [37003] = 1110735,
                        [37004] = 1110736,
                        [37005] = 1110737,
                        [37028] = 1111305,
                },
                [2] = 
                { 
                        [37001] = 1110667,
                        [37004] = 1110736,
                        [37005] = 1110737,
                        [37028] = 1111305,
                },
                [3] = 
                { 
                        [37001] = 1110674,
                        [37005] = 1110737,
                        [37028] = 1111305,
                },
        },
        static_gadget = 
    {
                [37002] = {0, 37033, 37032, 37032},  
    },

        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [37003] = {0, 37030, 37034, 37034}, 
                [37004] = {0, 0, 37030, 37030}, 
                [37005] = {0, 0, 0, 37031},
 	[37028] = {0, 0, 0, 0},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 37002, reminder_id = 1110707, point_array = 900200023, point_id_list = {1,2,3,4}, duration = 10},
                          [2] = { config_id = 37001, reminder_id = 1110708, point_array = 0, point_id_list = 0, duration = 12},
                },
                {
                          [1] = { config_id = 37003, reminder_id = 1110709, point_array = 900200024, point_id_list = {1,2}, duration = 10},
                          [2] = { config_id = 37002, reminder_id = 1110710, point_array = 900200025, point_id_list = {1,2,3}, duration = 10},
                          [3] = { config_id = 37003, reminder_id = 1110711, point_array = 0, point_id_list = 0, duration = 10},
                          [4] = { config_id = 37002, reminder_id = 1110712, point_array = 900200026, point_id_list = {1,2,3,4,5}, duration = 15},
                          [5] = { config_id = 37003, reminder_id = 1110714, point_array = 900200027, point_id_list = {1,2,3,4}, duration = 12},
                          [6] = { config_id = 37001, reminder_id = 1110715, point_array = 0, point_id_list = 0, duration = 21},

                },
                {
                          [1] = { config_id = 37004, reminder_id = 1110717, point_array = 0, point_id_list = 0, duration = 8},
                          [2] = { config_id = 37003, reminder_id = 1110718, point_array = 900200028, point_id_list = {1,2}, duration = 11},
                          [3] = { config_id = 37002, reminder_id = 1110719, point_array = 0, point_id_list = 0, duration = 14},
                          [4] = { config_id = 37003, reminder_id = 1110720, point_array = 0, point_id_list = 0, duration = 26},
                          [5] = { config_id = 37001, reminder_id = 1110723, point_array = 0, point_id_list = 0, duration = 10},

                },
                {
                          [1] = { config_id = 37005, reminder_id = 1110724, point_array = 0, point_id_list = 0, duration = 10},
                          [2] = { config_id = 37002, reminder_id = 1110725, point_array = 900200029, point_id_list = {1,2,3,4}, duration = 20},
                          [3] = { config_id = 37003, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [4] = { config_id = 37001, reminder_id = 1110727, point_array = 0, point_id_list = 0, duration = 12},
                          [5] = { config_id = 37002, reminder_id = 1110728, point_array = 0, point_id_list = 0, duration = 12},
                          [6] = { config_id = 37005, reminder_id = 1110729, point_array = 0, point_id_list = 0, duration = 8},
                          [7] = { config_id = 37004, reminder_id = 1110730, point_array = 0, point_id_list = 0, duration = 8},
                          [8] = { config_id = 37001, reminder_id = 1110731, point_array = 0, point_id_list = 0, duration = 9},

                },
        },
        spec_actions = 
        {
               
                  [1] = { config_id = 37028, reminder_id = 1111306, point_array = {900200127}, point_id_list = {1,2,3,4}, duration = 4},
                  [2] = { config_id = 37028, reminder_id = 1111306, point_array = {900200127}, point_id_list = {1,2,3,4}, duration = 4},
                  [3] = { config_id = 37028, reminder_id = 1111306, point_array = {900200127}, point_id_list = {1,2,3,4}, duration = 4},
                
        },
        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 37007, correct_gadget = 37003, spec = 37028},
                   [2] = { add_suite = 4, correct_slot = 37007, correct_gadget = 37004, spec = 37028},
                   [3] = { add_suite = 5, correct_slot = 37009, correct_gadget = 37005, spec = 37028},
        },

no_actor = 37001

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
	[37001] = { config_id = 37001, gadget_id = 70310175, pos = { x = 569.846, y = 127.988, z = -563.472 }, rot = { x = 0.000, y = 250.505, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙
	[37002] = { config_id = 37002, gadget_id = 70310173, pos = { x = 570.296, y = 128.113, z = -560.475 }, rot = { x = 359.956, y = 266.804, z = 0.042 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从甲
	[37003] = { config_id = 37003, gadget_id = 70310173, pos = { x = 555.213, y = 126.950, z = -564.102 }, rot = { x = 0.000, y = 41.853, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从
	[37004] = { config_id = 37004, gadget_id = 70310265, pos = { x = 557.539, y = 126.780, z = -564.523 }, rot = { x = 0.000, y = 41.853, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 公主
	[37005] = { config_id = 37005, gadget_id = 70310173, pos = { x = 559.318, y = 126.493, z = -566.611 }, rot = { x = 0.000, y = 41.853, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始演出
	[37006] = { config_id = 37006, gadget_id = 70360001, pos = { x = 567.035, y = 127.986, z = -562.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从甲，忠诚的侍从登场点
	[37007] = { config_id = 37007, gadget_id = 70360001, pos = { x = 565.967, y = 128.120, z = -556.143 }, rot = { x = 0.000, y = 134.137, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主登场点
	[37009] = { config_id = 37009, gadget_id = 70360001, pos = { x = 569.357, y = 128.066, z = -557.994 }, rot = { x = 0.000, y = 221.752, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从甲，忠诚侍从坐点
	[37012] = { config_id = 37012, gadget_id = 70310174, pos = { x = 566.198, y = 128.124, z = -556.410 }, rot = { x = 0.000, y = 135.806, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主坐点
	[37013] = { config_id = 37013, gadget_id = 70310174, pos = { x = 569.168, y = 128.077, z = -558.182 }, rot = { x = 0.000, y = 222.653, z = 0.000 }, level = 20, area_id = 401 },
	[37014] = { config_id = 37014, gadget_id = 70310398, pos = { x = 565.911, y = 128.107, z = -556.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[37015] = { config_id = 37015, gadget_id = 70310398, pos = { x = 569.051, y = 128.100, z = -558.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[37016] = { config_id = 37016, gadget_id = 70310473, pos = { x = 559.145, y = 126.196, z = -566.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[37017] = { config_id = 37017, gadget_id = 70310473, pos = { x = 557.539, y = 126.780, z = -564.523 }, rot = { x = 0.000, y = 41.853, z = 0.000 }, level = 20, area_id = 401 },
	[37018] = { config_id = 37018, gadget_id = 70310473, pos = { x = 555.115, y = 126.579, z = -564.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[37019] = { config_id = 37019, gadget_id = 70310310, pos = { x = 566.739, y = 128.086, z = -556.892 }, rot = { x = 0.000, y = 313.781, z = 0.000 }, level = 20, area_id = 401 },
	[37020] = { config_id = 37020, gadget_id = 70310312, pos = { x = 567.576, y = 128.081, z = -557.770 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 20, area_id = 401 },
	[37021] = { config_id = 37021, gadget_id = 70310309, pos = { x = 566.465, y = 128.086, z = -559.078 }, rot = { x = 0.000, y = 223.461, z = 0.000 }, level = 20, area_id = 401 },
	[37022] = { config_id = 37022, gadget_id = 70310310, pos = { x = 569.858, y = 128.086, z = -560.027 }, rot = { x = 0.000, y = 136.333, z = 0.000 }, level = 20, area_id = 401 },
	[37023] = { config_id = 37023, gadget_id = 70310312, pos = { x = 568.968, y = 128.084, z = -559.228 }, rot = { x = 0.000, y = 315.107, z = 0.000 }, level = 20, area_id = 401 },
	[37024] = { config_id = 37024, gadget_id = 70310309, pos = { x = 567.790, y = 128.084, z = -560.310 }, rot = { x = 0.000, y = 225.260, z = 0.000 }, level = 20, area_id = 401 },
	[37025] = { config_id = 37025, gadget_id = 70211121, pos = { x = 563.422, y = 126.549, z = -564.918 }, rot = { x = 2.076, y = 242.235, z = 7.432 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	[37028] = { config_id = 37028, gadget_id = 70310173, pos = { x = 563.582, y = 125.565, z = -570.951 }, rot = { x = 0.000, y = 317.554, z = 0.000 }, level = 20, start_route = false, is_use_point_array = true, area_id = 401 },
	[37029] = { config_id = 37029, gadget_id = 70310473, pos = { x = 563.616, y = 125.980, z = -570.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从甲起始点
	[37030] = { config_id = 37030, gadget_id = 70310189, pos = { x = 565.967, y = 128.120, z = -556.143 }, rot = { x = 0.000, y = 134.137, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主站定点/起始点
	[37031] = { config_id = 37031, gadget_id = 70310189, pos = { x = 569.357, y = 128.066, z = -557.994 }, rot = { x = 0.000, y = 221.752, z = 0.000 }, level = 1, area_id = 401 },
	-- 恶龙站定点1
	[37032] = { config_id = 37032, gadget_id = 70310189, pos = { x = 567.214, y = 128.116, z = -560.925 }, rot = { x = 0.015, y = 206.061, z = 0.059 }, level = 1, area_id = 401 },
	-- 恶龙初始点
	[37033] = { config_id = 37033, gadget_id = 70310189, pos = { x = 570.296, y = 128.113, z = -560.475 }, rot = { x = 359.956, y = 266.804, z = 0.042 }, level = 1, area_id = 401 },
	-- 侍从甲站定点1
	[37034] = { config_id = 37034, gadget_id = 70310189, pos = { x = 565.838, y = 128.120, z = -559.748 }, rot = { x = 0.000, y = 187.612, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[37010] = { config_id = 37010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 557.104, y = 125.057, z = -565.322 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 完成间幕1时改juchang2变量
	{ config_id = 1037008, name = "VARIABLE_CHANGE_37008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_37008", action = "action_EVENT_VARIABLE_CHANGE_37008", trigger_count = 0 },
	-- 间幕1完成后通知任务
	{ config_id = 1037011, name = "VARIABLE_CHANGE_37011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_37011", action = "action_EVENT_VARIABLE_CHANGE_37011", trigger_count = 0 },
	{ config_id = 1037026, name = "VARIABLE_CHANGE_37026", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_37026", action = "action_EVENT_VARIABLE_CHANGE_37026", trigger_count = 0 },
	{ config_id = 1037027, name = "GROUP_LOAD_37027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_37027", action = "action_EVENT_GROUP_LOAD_37027", trigger_count = 0 }
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
		regions = { 37010 },
		triggers = { "VARIABLE_CHANGE_37011", "VARIABLE_CHANGE_37026", "GROUP_LOAD_37027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 37001, 37002, 37006, 37012, 37013, 37019, 37020, 37021, 37022, 37023, 37024 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_37008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 37007, 37014, 37016, 37017, 37018, 37029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 37007, 37014, 37016, 37017, 37029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 37009, 37015, 37016, 37029 },
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
function condition_EVENT_VARIABLE_CHANGE_37008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_37008(context, evt)
	-- 针对当前group内变量名为 "dramamiddle" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "dramamiddle", 1, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu1", 0, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu3", 0, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "jianmu2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "jianmu2", 1, 199002019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appear", 1, 199002189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Appear", 1, 199002082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_37011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_37011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "drama2.1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_37026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_37026(context, evt)
	-- 创建id为37025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_37027(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_37027(context, evt)
	-- 创建id为37025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"