-- 基础信息
local base_info = {
	group_id = 199002036
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
                        [36001] = 1110688,
                        [36002] = 1110732,
                        [36003] = 1110733,
                        [36004] = 1110734,
                },
                [2] = 
                { 
                        [36001] = 1110643,
                        [36003] = 1110733,
                        [36004] = 1110734,
                },
                [3] = 
                { 
                        [36001] = 1110650,
                        [36004] = 1110734,
                },
        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [36002] = {0, 36036, 36033, 36033}, 
                [36003] = {0, 0, 36035, 36034}, 
                [36004] = {0, 0, 0, 36035},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 36001, reminder_id = 1110687, point_array = 0, point_id_list = 0, duration = 18},
                },
                {
                          [1] = { config_id = 36002, reminder_id = 1110639, point_array = 900200018, point_id_list = {1,2,3,4,5,6,7,8,9,10,11}, duration = 42},
                          [2] = { config_id = 36001, reminder_id = 1110643, point_array = 0, point_id_list = 0, duration = 12},

                },
                {
                          [1] = { config_id = 36003, reminder_id = 1110644, point_array = 900200019, point_id_list = {1,2,3,4,5,6,7}, duration = 54},
                          [2] = { config_id = 36001, reminder_id = 1110650, point_array = 0, point_id_list = 0, duration = 8},

                },
                {
                          [1] = { config_id = 36004, reminder_id = 1110651, point_array = 900200020, point_id_list = {1,2,3,4,5,6}, duration = 32},
                          [2] = { config_id = 0, reminder_id = 1110655, point_array = 0, point_id_list = 0, duration = 6},
                          [3] = { config_id = 36003, reminder_id = 1110656, point_array = 900200021, point_id_list = {1,2}, duration = 3},
                          [4] = { config_id = 36004, reminder_id = 1110657, point_array = 900200022, point_id_list = {1,2}, duration = 2},


                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 36009, correct_gadget = 36002},
                   [2] = { add_suite = 4, correct_slot = 36010, correct_gadget = 36003},
                   [3] = { add_suite = 5, correct_slot = 36010, correct_gadget = 36004},
        },

no_actor = 36001
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
	[36001] = { config_id = 36001, gadget_id = 70310175, pos = { x = 569.846, y = 127.988, z = -563.472 }, rot = { x = 0.000, y = 250.505, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙
	[36002] = { config_id = 36002, gadget_id = 70310173, pos = { x = 560.304, y = 126.137, z = -568.580 }, rot = { x = 0.000, y = 41.106, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 商人
	[36003] = { config_id = 36003, gadget_id = 70310173, pos = { x = 558.166, y = 126.635, z = -565.359 }, rot = { x = 0.000, y = 49.511, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 冒险家
	[36004] = { config_id = 36004, gadget_id = 70310173, pos = { x = 554.498, y = 127.099, z = -563.468 }, rot = { x = 0.000, y = 64.738, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始演出
	[36006] = { config_id = 36006, gadget_id = 70360001, pos = { x = 566.830, y = 128.208, z = -562.899 }, rot = { x = 0.000, y = 235.004, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙登场点
	[36007] = { config_id = 36007, gadget_id = 70310174, pos = { x = 562.925, y = 128.140, z = -552.794 }, rot = { x = 0.000, y = 133.665, z = 0.000 }, level = 20, area_id = 401 },
	-- 商人，冒险家登场点
	[36008] = { config_id = 36008, gadget_id = 70310174, pos = { x = 566.133, y = 128.120, z = -553.552 }, rot = { x = 0.000, y = 225.557, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙登场操作台
	[36009] = { config_id = 36009, gadget_id = 70360001, pos = { x = 562.700, y = 128.154, z = -552.584 }, rot = { x = 0.000, y = 133.691, z = 0.000 }, level = 20, area_id = 401 },
	-- 商人，冒险家登场操作台
	[36010] = { config_id = 36010, gadget_id = 70360001, pos = { x = 566.324, y = 128.114, z = -553.375 }, rot = { x = 0.000, y = 226.603, z = 0.000 }, level = 20, area_id = 401 },
	[36011] = { config_id = 36011, gadget_id = 70310398, pos = { x = 562.700, y = 128.154, z = -552.584 }, rot = { x = 0.000, y = 133.691, z = 0.000 }, level = 20, area_id = 401 },
	[36012] = { config_id = 36012, gadget_id = 70310398, pos = { x = 566.239, y = 128.104, z = -552.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[36013] = { config_id = 36013, gadget_id = 70310473, pos = { x = 560.304, y = 126.137, z = -568.580 }, rot = { x = 0.000, y = 41.106, z = 0.000 }, level = 20, area_id = 401 },
	[36014] = { config_id = 36014, gadget_id = 70310473, pos = { x = 558.175, y = 126.411, z = -565.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[36015] = { config_id = 36015, gadget_id = 70310473, pos = { x = 554.481, y = 126.626, z = -563.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[36016] = { config_id = 36016, gadget_id = 70310473, pos = { x = 558.175, y = 126.411, z = -565.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[36017] = { config_id = 36017, gadget_id = 70310473, pos = { x = 554.481, y = 126.626, z = -563.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[36018] = { config_id = 36018, gadget_id = 70310473, pos = { x = 554.481, y = 126.626, z = -563.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[36019] = { config_id = 36019, gadget_id = 70310309, pos = { x = 563.600, y = 128.102, z = -553.450 }, rot = { x = 0.000, y = 314.228, z = 0.000 }, level = 20, area_id = 401 },
	[36020] = { config_id = 36020, gadget_id = 70310311, pos = { x = 564.860, y = 128.093, z = -554.672 }, rot = { x = 0.000, y = 45.411, z = 0.000 }, level = 20, area_id = 401 },
	[36021] = { config_id = 36021, gadget_id = 70310310, pos = { x = 565.805, y = 128.084, z = -553.856 }, rot = { x = 0.000, y = 45.084, z = 0.000 }, level = 20, area_id = 401 },
	[36022] = { config_id = 36022, gadget_id = 70310310, pos = { x = 564.032, y = 128.084, z = -555.613 }, rot = { x = 0.000, y = 45.084, z = 0.000 }, level = 20, area_id = 401 },
	[36023] = { config_id = 36023, gadget_id = 70310312, pos = { x = 563.250, y = 128.084, z = -556.516 }, rot = { x = 0.000, y = 226.520, z = 0.000 }, level = 20, area_id = 401 },
	[36024] = { config_id = 36024, gadget_id = 70310309, pos = { x = 564.543, y = 128.091, z = -557.929 }, rot = { x = 0.000, y = 315.541, z = 0.000 }, level = 20, area_id = 401 },
	[36025] = { config_id = 36025, gadget_id = 70310309, pos = { x = 566.221, y = 128.091, z = -559.640 }, rot = { x = 0.000, y = 135.473, z = 0.000 }, level = 20, area_id = 401 },
	[36026] = { config_id = 36026, gadget_id = 70310312, pos = { x = 567.603, y = 128.084, z = -560.923 }, rot = { x = 0.000, y = 135.780, z = 0.000 }, level = 20, area_id = 401 },
	[36027] = { config_id = 36027, gadget_id = 70310310, pos = { x = 568.281, y = 128.090, z = -560.331 }, rot = { x = 0.000, y = 45.120, z = 0.000 }, level = 20, area_id = 401 },
	[36028] = { config_id = 36028, gadget_id = 70310312, pos = { x = 569.159, y = 128.096, z = -559.542 }, rot = { x = 0.000, y = 315.188, z = 0.000 }, level = 20, area_id = 401 },
	[36029] = { config_id = 36029, gadget_id = 70310310, pos = { x = 569.904, y = 128.084, z = -560.140 }, rot = { x = 0.000, y = 133.718, z = 0.000 }, level = 20, area_id = 401 },
	[36031] = { config_id = 36031, gadget_id = 70211101, pos = { x = 558.694, y = 126.817, z = -558.692 }, rot = { x = 0.000, y = 224.910, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	-- 恶龙站定点
	[36033] = { config_id = 36033, gadget_id = 70310189, pos = { x = 570.423, y = 128.154, z = -560.635 }, rot = { x = 0.000, y = 234.705, z = 0.000 }, level = 1, area_id = 401 },
	-- 商人站定点
	[36034] = { config_id = 36034, gadget_id = 70310189, pos = { x = 567.570, y = 128.114, z = -560.942 }, rot = { x = 0.000, y = 227.056, z = 0.000 }, level = 1, area_id = 401 },
	-- 商人，冒险家起始点
	[36035] = { config_id = 36035, gadget_id = 70310189, pos = { x = 566.324, y = 128.114, z = -553.375 }, rot = { x = 0.000, y = 226.603, z = 0.000 }, level = 1, area_id = 401 },
	-- 恶龙起始点
	[36036] = { config_id = 36036, gadget_id = 70310189, pos = { x = 562.700, y = 128.154, z = -552.584 }, rot = { x = 0.000, y = 133.691, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[36005] = { config_id = 36005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 557.979, y = 125.353, z = -566.482 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1036005, name = "ENTER_REGION_36005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1036030, name = "VARIABLE_CHANGE_36030", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_36030", action = "action_EVENT_VARIABLE_CHANGE_36030", trigger_count = 0 },
	{ config_id = 1036032, name = "GROUP_LOAD_36032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36032", action = "action_EVENT_GROUP_LOAD_36032", trigger_count = 0 }
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
		regions = { 36005 },
		triggers = { "ENTER_REGION_36005", "VARIABLE_CHANGE_36030", "GROUP_LOAD_36032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 36001, 36006, 36007, 36008, 36019, 36020, 36021, 36022, 36023, 36024, 36025, 36026, 36027, 36028, 36029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 36009, 36011, 36013, 36014, 36015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 36010, 36012, 36016, 36017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 36010, 36012, 36018 },
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
function condition_EVENT_VARIABLE_CHANGE_36030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36030(context, evt)
	-- 创建id为36031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 36031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36032(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36032(context, evt)
	-- 创建id为36031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 36031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"