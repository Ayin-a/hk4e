-- 基础信息
local base_info = {
	group_id = 199002042
}

-- DEFS_MISCS
local        defs = 
{
	--幕布Group
	curtain_group = 199002073,
        --每个阶段的所有演员物件config_id。用于统一设置可拾取/可对话状态
        actor_list = 
        {
                [1] = 
                { 
                        [42001] = 1110892,
                        [42002] = 1110916,
                        [42003] = 1110917,
                        [42004] = 1110918,
                },
                [2] = 
                { 
                        [42001] = 1110900,
                        [42003] = 1110917,
                        [42004] = 1110918,
                },
                [3] = 
                { 
                        [42001] = 1110907,
                        [42004] = 1110918,
                },
        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [42002] = {0, 42030, 42027, 42027}, 
                [42003] = {0, 0, 42029, 42028}, 
                [42004] = {0, 0, 0, 42029},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 42001, reminder_id = 1110889, point_array = 900200030, point_id_list = {1,2,3}, duration = 6},
                          [2] = { config_id = 42008, reminder_id = 1110890, point_array = 0, point_id_list = 0, duration = 7},
                          [3] = { config_id = 42001, reminder_id = 1110891, point_array = 0, point_id_list = 0, duration = 18},
                         
                        
                },
                {
                          [1] = { config_id = 42002, reminder_id = 1110893, point_array = 900200031, point_id_list = {1,2,3,4}, duration = 37},
                          [2] = { config_id = 42001, reminder_id = 1110898, point_array = 0, point_id_list = 0, duration = 25},



                },
                {
                          [1] = { config_id = 42003, reminder_id = 1110901, point_array = 900200032, point_id_list = {1,2,3,4,5,6,7}, duration = 12},
                          [2] = { config_id = 42002, reminder_id = 1110903, point_array = 900200033, point_id_list ={1,2,3}, duration =10},
                          [3] = { config_id = 42003, reminder_id = 1110904, point_array = 0, point_id_list = 0, duration = 21},
                          [4] = { config_id = 42002, reminder_id = 1110906, point_array = 0, point_id_list = 0, duration = 10},
                          [5] = { config_id = 42001, reminder_id = 1110907, point_array = 0, point_id_list = 0, duration = 10},


                },
                {
                          [1] = { config_id = 42004, reminder_id = 1110908, point_array = 900200034, point_id_list = {1,2,3,4,5}, duration = 1},
                          [2] = { config_id = 42002, reminder_id = 1110909, point_array = 0, point_id_list = 0, duration = 9},
                          [3] = { config_id = 42004, reminder_id = 1110910, point_array = 0, point_id_list = 0, duration = 11},
                          [4] = { config_id = 42008, reminder_id = 1110911, point_array = 900200035, point_id_list = {1,2,3}, duration = 12},
                          [5] = { config_id = 42003, reminder_id = 1110912, point_array = 0, point_id_list = 0, duration = 9},
                          [6] = { config_id = 42004, reminder_id = 1110913, point_array = 900200036, point_id_list = {1,2,3}, duration = 3},
                          [7] = { config_id = 42004, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [8] = { config_id = 42001, reminder_id = 1110914, point_array = 0, point_id_list = 0, duration = 16},

                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 42005, correct_gadget = 42002},
                   [2] = { add_suite = 4, correct_slot = 42006, correct_gadget = 42003},
                   [3] = { add_suite = 5, correct_slot = 42006, correct_gadget = 42004},
        },

no_actor = 42001
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
	[42001] = { config_id = 42001, gadget_id = 70310175, pos = { x = 376.811, y = 125.205, z = -469.823 }, rot = { x = 0.000, y = 317.770, z = 0.000 }, level = 20, area_id = 401 },
	-- 忠诚的侍从
	[42002] = { config_id = 42002, gadget_id = 70310265, pos = { x = 362.819, y = 124.459, z = -460.343 }, rot = { x = 0.000, y = 121.587, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 公主
	[42003] = { config_id = 42003, gadget_id = 70310173, pos = { x = 361.768, y = 124.753, z = -457.885 }, rot = { x = 0.000, y = 115.675, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从乙
	[42004] = { config_id = 42004, gadget_id = 70310173, pos = { x = 365.864, y = 124.575, z = -455.691 }, rot = { x = 0.000, y = 127.008, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从登场操作台
	[42005] = { config_id = 42005, gadget_id = 70360001, pos = { x = 381.128, y = 125.358, z = -458.840 }, rot = { x = 0.000, y = 202.561, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主，侍从乙登场操作台
	[42006] = { config_id = 42006, gadget_id = 70360001, pos = { x = 384.681, y = 125.380, z = -459.784 }, rot = { x = 0.000, y = 202.561, z = 0.000 }, level = 20, area_id = 401 },
	[42007] = { config_id = 42007, gadget_id = 70310398, pos = { x = 381.128, y = 125.358, z = -458.840 }, rot = { x = 0.000, y = 202.561, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙
	[42008] = { config_id = 42008, gadget_id = 70310173, pos = { x = 378.302, y = 125.357, z = -466.197 }, rot = { x = 0.000, y = 315.068, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从坐点
	[42009] = { config_id = 42009, gadget_id = 70310174, pos = { x = 380.993, y = 125.370, z = -459.076 }, rot = { x = 0.000, y = 202.915, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主，侍从乙坐点
	[42010] = { config_id = 42010, gadget_id = 70310174, pos = { x = 384.558, y = 125.324, z = -460.084 }, rot = { x = 0.000, y = 201.972, z = 0.000 }, level = 20, area_id = 401 },
	[42011] = { config_id = 42011, gadget_id = 70310398, pos = { x = 384.666, y = 125.324, z = -459.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始演出
	[42012] = { config_id = 42012, gadget_id = 70360001, pos = { x = 375.783, y = 125.669, z = -467.719 }, rot = { x = 0.000, y = 318.895, z = 0.000 }, level = 20, area_id = 401 },
	[42014] = { config_id = 42014, gadget_id = 70310473, pos = { x = 362.762, y = 124.108, z = -460.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[42015] = { config_id = 42015, gadget_id = 70310473, pos = { x = 361.847, y = 124.319, z = -457.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[42016] = { config_id = 42016, gadget_id = 70310473, pos = { x = 365.853, y = 124.194, z = -455.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[42017] = { config_id = 42017, gadget_id = 70310310, pos = { x = 380.942, y = 125.324, z = -459.330 }, rot = { x = 0.000, y = 21.173, z = 0.000 }, level = 20, area_id = 401 },
	[42018] = { config_id = 42018, gadget_id = 70310311, pos = { x = 380.568, y = 125.324, z = -460.521 }, rot = { x = 0.000, y = 200.938, z = 0.000 }, level = 20, area_id = 401 },
	[42019] = { config_id = 42019, gadget_id = 70310309, pos = { x = 382.083, y = 125.324, z = -461.108 }, rot = { x = 0.000, y = 111.627, z = 0.000 }, level = 20, area_id = 401 },
	[42020] = { config_id = 42020, gadget_id = 70310312, pos = { x = 383.822, y = 125.324, z = -461.714 }, rot = { x = 0.000, y = 112.863, z = 0.000 }, level = 20, area_id = 401 },
	[42021] = { config_id = 42021, gadget_id = 70310310, pos = { x = 384.222, y = 125.347, z = -460.892 }, rot = { x = 0.000, y = 22.454, z = 0.000 }, level = 20, area_id = 401 },
	[42022] = { config_id = 42022, gadget_id = 70310309, pos = { x = 379.864, y = 125.324, z = -462.068 }, rot = { x = 0.000, y = 201.652, z = 0.000 }, level = 20, area_id = 401 },
	[42023] = { config_id = 42023, gadget_id = 70310310, pos = { x = 378.548, y = 125.324, z = -465.513 }, rot = { x = 0.000, y = 21.858, z = 0.000 }, level = 20, area_id = 401 },
	[42024] = { config_id = 42024, gadget_id = 70211101, pos = { x = 378.819, y = 121.993, z = -453.256 }, rot = { x = 4.719, y = 276.385, z = 357.187 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	-- 侍从站点1
	[42027] = { config_id = 42027, gadget_id = 70310189, pos = { x = 379.425, y = 125.358, z = -463.194 }, rot = { x = 0.000, y = 250.625, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主站点1
	[42028] = { config_id = 42028, gadget_id = 70310189, pos = { x = 380.808, y = 125.380, z = -459.767 }, rot = { x = 0.000, y = 198.903, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主/侍从乙起始点
	[42029] = { config_id = 42029, gadget_id = 70310189, pos = { x = 384.681, y = 125.380, z = -459.784 }, rot = { x = 0.000, y = 202.561, z = 0.000 }, level = 1, area_id = 401 },
	-- 忠诚侍从起始点
	[42030] = { config_id = 42030, gadget_id = 70310189, pos = { x = 381.128, y = 125.358, z = -458.840 }, rot = { x = 0.000, y = 202.561, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[42013] = { config_id = 42013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 370.229, y = 122.443, z = -458.034 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1042013, name = "ENTER_REGION_42013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1042025, name = "VARIABLE_CHANGE_42025", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_42025", action = "action_EVENT_VARIABLE_CHANGE_42025", trigger_count = 0 },
	{ config_id = 1042026, name = "GROUP_LOAD_42026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_42026", action = "action_EVENT_GROUP_LOAD_42026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "play_state", value = 0, no_refresh = true }
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
		regions = { 42013 },
		triggers = { "ENTER_REGION_42013", "VARIABLE_CHANGE_42025", "GROUP_LOAD_42026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 42001, 42008, 42009, 42010, 42012, 42017, 42018, 42019, 42020, 42021, 42022, 42023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 42005, 42007, 42014, 42015, 42016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 42006, 42011, 42015, 42016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 42006, 42011, 42016 },
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
function condition_EVENT_VARIABLE_CHANGE_42025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_42025(context, evt)
	-- 创建id为42024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 42024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_42026(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_42026(context, evt)
	-- 创建id为42024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 42024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"