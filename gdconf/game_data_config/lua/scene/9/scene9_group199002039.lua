-- 基础信息
local base_info = {
	group_id = 199002039
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
                        [39001] = 1110834,
                        [39004] = 1110859,
                        [39005] = 1110860,
                        [39006] = 1110861,
                },
                [2] = 
                { 
                        [39001] = 1110840,
                        [39005] = 1110860,
                        [39006] = 1110861,
                },
                [3] = 
                { 
                        [39001] = 1110846,
                        [39006] = 1110861,
                },
        },

        static_gadget = 
    {
                [39002] = {0, 39029, 39030, 39031},  
    },


        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [39004] = {0, 39026, -1, -1}, 
                [39005] = {0, 0, 39027, -1}, 
                [39006] = {0, 0, 0, 39028},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 39002, reminder_id = 1110824, point_array = 0, point_id_list = 0, duration = 34},
                          [2] = { config_id = 39003, reminder_id = 1110829, point_array = 0, point_id_list = 0, duration = 30},
                          [3] = { config_id = 39002, reminder_id = 1110833, point_array = 900200051, point_id_list = {1,2}, duration = 9},
                          [4] = { config_id = 39001, reminder_id = 1110834, point_array = 0, point_id_list = 0, duration = 10},
                },
                {
                          [1] = { config_id = 39004, reminder_id = 1110835, point_array = 0, point_id_list = 0, duration = 24},
                          [2] = { config_id = 39002, reminder_id = 1110838, point_array = 900200052, point_id_list = {1,2}, duration = 13},
                          [3] = { config_id = 39004, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [4] = { config_id = 39001, reminder_id = 1110840, point_array = 0, point_id_list = 0, duration = 10},

                },
                {
                          [1] = { config_id = 39005, reminder_id = 1110841, point_array = 0, point_id_list = 0, duration = 24},
                          [2] = { config_id = 39002, reminder_id = 1110844, point_array = 900200053, point_id_list = {1,2}, duration = 15},
                          [3] = { config_id = 39005, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [4] = { config_id = 39001, reminder_id = 1110846, point_array = 0, point_id_list = 0, duration = 10},

                },
                {
                          [1] = { config_id = 39006, reminder_id = 1110847, point_array = 0, point_id_list = 0, duration = 18},
                          [2] = { config_id = 39002, reminder_id = 1110849, point_array = 900200054, point_id_list = {1,2}, duration = 15},
                          [3] = { config_id = 39006, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [4] = { config_id = 39002, reminder_id = 1110851, point_array = 900200055, point_id_list = {1,2,3}, duration = 16},
                          [5] = { config_id = 39003, reminder_id = 1110853, point_array = 0, point_id_list = 0, duration = 32},
                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 39008, correct_gadget = 39004},
                   [2] = { add_suite = 4, correct_slot = 39009, correct_gadget = 39005},
                   [3] = { add_suite = 5, correct_slot = 39010, correct_gadget = 39006},
        },

no_actor = 39001

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
	[39001] = { config_id = 39001, gadget_id = 70310175, pos = { x = 493.884, y = 128.700, z = -440.099 }, rot = { x = 0.000, y = 117.570, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主
	[39002] = { config_id = 39002, gadget_id = 70310173, pos = { x = 491.706, y = 128.838, z = -448.259 }, rot = { x = 0.000, y = 83.020, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 忠诚的侍从
	[39003] = { config_id = 39003, gadget_id = 70310265, pos = { x = 491.566, y = 128.675, z = -449.230 }, rot = { x = 0.000, y = 66.123, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从甲
	[39004] = { config_id = 39004, gadget_id = 70310173, pos = { x = 512.924, y = 128.198, z = -448.694 }, rot = { x = 0.000, y = 277.158, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从乙
	[39005] = { config_id = 39005, gadget_id = 70310173, pos = { x = 516.312, y = 128.081, z = -440.392 }, rot = { x = 0.000, y = 244.981, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从丙
	[39006] = { config_id = 39006, gadget_id = 70310173, pos = { x = 515.715, y = 128.217, z = -445.412 }, rot = { x = 0.000, y = 277.631, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始演出
	[39007] = { config_id = 39007, gadget_id = 70360001, pos = { x = 495.911, y = 128.929, z = -443.462 }, rot = { x = 0.000, y = 113.769, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从甲登场点操作台
	[39008] = { config_id = 39008, gadget_id = 70360001, pos = { x = 492.242, y = 128.830, z = -445.548 }, rot = { x = 0.000, y = 102.935, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从乙登场点操作台
	[39009] = { config_id = 39009, gadget_id = 70360001, pos = { x = 493.792, y = 128.800, z = -450.497 }, rot = { x = 0.000, y = 354.676, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙登场点操作台
	[39010] = { config_id = 39010, gadget_id = 70360001, pos = { x = 494.130, y = 128.833, z = -446.609 }, rot = { x = 0.000, y = 82.271, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从甲登场点
	[39011] = { config_id = 39011, gadget_id = 70310174, pos = { x = 492.495, y = 128.828, z = -445.577 }, rot = { x = 0.321, y = 101.110, z = 358.367 }, level = 20, area_id = 401 },
	-- 侍从乙登场点
	[39012] = { config_id = 39012, gadget_id = 70310174, pos = { x = 493.775, y = 128.802, z = -450.194 }, rot = { x = 0.000, y = 354.950, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙登场点
	[39013] = { config_id = 39013, gadget_id = 70310174, pos = { x = 494.431, y = 128.817, z = -446.571 }, rot = { x = 0.000, y = 82.577, z = 0.000 }, level = 20, area_id = 401 },
	[39015] = { config_id = 39015, gadget_id = 70310473, pos = { x = 513.440, y = 127.183, z = -448.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[39016] = { config_id = 39016, gadget_id = 70310473, pos = { x = 515.755, y = 127.764, z = -445.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[39017] = { config_id = 39017, gadget_id = 70310473, pos = { x = 516.377, y = 127.442, z = -440.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[39018] = { config_id = 39018, gadget_id = 70310398, pos = { x = 492.102, y = 128.814, z = -445.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[39019] = { config_id = 39019, gadget_id = 70310398, pos = { x = 493.787, y = 128.849, z = -450.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[39020] = { config_id = 39020, gadget_id = 70310398, pos = { x = 494.101, y = 128.814, z = -446.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[39021] = { config_id = 39021, gadget_id = 70310309, pos = { x = 493.060, y = 128.814, z = -448.130 }, rot = { x = 0.000, y = 265.355, z = 0.000 }, level = 20, area_id = 401 },
	[39022] = { config_id = 39022, gadget_id = 70310310, pos = { x = 494.000, y = 128.814, z = -448.059 }, rot = { x = 0.000, y = 85.291, z = 0.000 }, level = 20, area_id = 401 },
	[39023] = { config_id = 39023, gadget_id = 70211111, pos = { x = 500.109, y = 126.668, z = -450.871 }, rot = { x = 10.578, y = 79.375, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	-- 甲站点
	[39026] = { config_id = 39026, gadget_id = 70310189, pos = { x = 492.242, y = 128.830, z = -445.548 }, rot = { x = 0.000, y = 102.935, z = 0.000 }, level = 1, area_id = 401 },
	-- 乙站点
	[39027] = { config_id = 39027, gadget_id = 70310189, pos = { x = 493.792, y = 128.800, z = -450.497 }, rot = { x = 0.000, y = 354.676, z = 0.000 }, level = 1, area_id = 401 },
	-- 丙站点
	[39028] = { config_id = 39028, gadget_id = 70310189, pos = { x = 494.130, y = 128.833, z = -446.609 }, rot = { x = 0.000, y = 82.271, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主第一段末站点
	[39029] = { config_id = 39029, gadget_id = 70310189, pos = { x = 492.657, y = 128.838, z = -448.143 }, rot = { x = 0.000, y = 83.020, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主第二段末站点
	[39030] = { config_id = 39030, gadget_id = 70310189, pos = { x = 493.529, y = 128.838, z = -448.090 }, rot = { x = 0.000, y = 83.020, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主第三段末站点
	[39031] = { config_id = 39031, gadget_id = 70310189, pos = { x = 494.218, y = 128.838, z = -448.045 }, rot = { x = 0.000, y = 83.020, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主第四段末站点
	[39032] = { config_id = 39032, gadget_id = 70310189, pos = { x = 494.672, y = 128.838, z = -447.939 }, rot = { x = 0.000, y = 69.357, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[39014] = { config_id = 39014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 501.899, y = 124.740, z = -447.853 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1039014, name = "ENTER_REGION_39014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1039024, name = "VARIABLE_CHANGE_39024", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_39024", action = "action_EVENT_VARIABLE_CHANGE_39024", trigger_count = 0 },
	{ config_id = 1039025, name = "GROUP_LOAD_39025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_39025", action = "action_EVENT_GROUP_LOAD_39025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "play_state", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1039033, name = "VARIABLE_CHANGE_39033", event = EventType.EVENT_VARIABLE_CHANGE, source = "play_state", condition = "condition_EVENT_VARIABLE_CHANGE_39033", action = "action_EVENT_VARIABLE_CHANGE_39033", trigger_count = 0 }
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
		regions = { },
		triggers = { "VARIABLE_CHANGE_39024", "GROUP_LOAD_39025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 39001, 39002, 39003, 39007, 39011, 39012, 39013, 39021, 39022 },
		regions = { 39014 },
		triggers = { "ENTER_REGION_39014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 39008, 39015, 39016, 39017, 39018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 39009, 39016, 39017, 39019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 39010, 39016, 39020, 39029, 39030, 39031, 39032 },
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
function condition_EVENT_VARIABLE_CHANGE_39024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_39024(context, evt)
	-- 创建id为39023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 39023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_39025(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39025(context, evt)
	-- 创建id为39023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 39023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"