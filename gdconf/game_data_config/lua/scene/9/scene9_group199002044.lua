-- 基础信息
local base_info = {
	group_id = 199002044
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
                        [44001] = 1110761,
                        [44003] = 1110817,
                        [44005] = 1110818,
                        [44006] = 1110819,
                },
                [2] = 
                { 
                        [44001] = 1110769,
                        [44005] = 1110818,
                        [44006] = 1110819,
                },
                [3] = 
                { 
                        [44001] = 1110779,
                        [44006] = 1110819,
                },
        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                        [44003] = {0, 44028, 44029, 44029},
                        [44005] = {0, 0, 44026, 44027},
                        [44006] = {0, 0, 0, 44030},
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 44001, reminder_id = 1110755, point_array = 0, point_id_list = 0, duration = 25},
                          [2] = { config_id = 44002, reminder_id = 1110758, point_array = 0, point_id_list = 0, duration = 21},
                          [3] = { config_id = 44001, reminder_id = 1110761, point_array = 0, point_id_list = 0, duration = 7},
                        
                },
                {
                          [1] = { config_id = 44003, reminder_id = 1110762, point_array = 900200042, point_id_list = {1,2}, duration = 7},
                          [2] = { config_id = 44004, reminder_id = 1110763, point_array = 0, point_id_list = 0, duration = 7},
                          [3] = { config_id = 44003, reminder_id = 1110764, point_array = 0, point_id_list = 0, duration = 9},
                          [4] = { config_id = 44004, reminder_id = 1110765, point_array = 0, point_id_list = 0, duration = 17},
                          [5] = { config_id = 44003, reminder_id = 1110767, point_array = 0, point_id_list = 0, duration = 14},
                          [6] = { config_id = 44001, reminder_id = 1110769, point_array = 0, point_id_list = 0, duration = 6},

                },
                {
                          [1] = { config_id = 44005, reminder_id = 1110770, point_array = 900200043, point_id_list = {1,2,3}, duration = 5},
                          [2] = { config_id = 44004, reminder_id = 1110771, point_array = 900200044, point_id_list = {1,2,3,4}, duration = 13},
                          [3] = { config_id = 44005, reminder_id = 1110773, point_array = 0, point_id_list = 0, duration = 5},
                          [4] = { config_id = 44004, reminder_id = 1110774, point_array = 0, point_id_list = 0, duration = 21},
                          [5] = { config_id = 44004, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 0},
                          [6] = { config_id = 44003, reminder_id = 1110777, point_array = 0, point_id_list = 0, duration = 16},
                          [7] = { config_id = 44001, reminder_id = 1110779, point_array = 0, point_id_list = 0, duration = 10},

                },
                {
                          [1] = { config_id = 44006, reminder_id = 1110780, point_array = 0, point_id_list = 0, duration = 18},
                          [2] = { config_id = 44003, reminder_id = 1110783, point_array = 0, point_id_list = 0, duration = 9},
                          [3] = { config_id = 44006, reminder_id = 1110784, point_array = 0, point_id_list = 0, duration = 6},
                          [4] = { config_id = 44001, reminder_id = 1110785, point_array = 0, point_id_list = 0, duration = 10},

                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 44008, correct_gadget = 44003},
                   [2] = { add_suite = 4, correct_slot = 44009, correct_gadget = 44005},
                   [3] = { add_suite = 5, correct_slot = 44010, correct_gadget = 44006},
        },

no_actor = 44001

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
	[44001] = { config_id = 44001, gadget_id = 70310175, pos = { x = 456.538, y = 122.197, z = -721.906 }, rot = { x = 0.000, y = 95.716, z = 0.000 }, level = 20, area_id = 401 },
	-- 忠诚的侍从
	[44002] = { config_id = 44002, gadget_id = 70310265, pos = { x = 457.800, y = 122.197, z = -728.788 }, rot = { x = 0.000, y = 65.986, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 恶龙
	[44003] = { config_id = 44003, gadget_id = 70310173, pos = { x = 466.762, y = 121.107, z = -725.616 }, rot = { x = 0.000, y = 243.524, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从丙（台上）
	[44004] = { config_id = 44004, gadget_id = 70310173, pos = { x = 460.181, y = 122.283, z = -730.311 }, rot = { x = 0.000, y = 328.392, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 公主
	[44005] = { config_id = 44005, gadget_id = 70310173, pos = { x = 465.113, y = 121.120, z = -722.615 }, rot = { x = 0.000, y = 226.962, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 侍从丙（演员）
	[44006] = { config_id = 44006, gadget_id = 70310173, pos = { x = 468.592, y = 121.105, z = -728.869 }, rot = { x = 0.000, y = 246.243, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始演出
	[44007] = { config_id = 44007, gadget_id = 70360001, pos = { x = 458.414, y = 122.478, z = -722.217 }, rot = { x = 0.000, y = 80.672, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙登场点操作台
	[44008] = { config_id = 44008, gadget_id = 70360001, pos = { x = 457.452, y = 122.329, z = -725.871 }, rot = { x = 0.000, y = 148.414, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主登场点操作台
	[44009] = { config_id = 44009, gadget_id = 70360001, pos = { x = 457.394, y = 122.349, z = -733.678 }, rot = { x = 0.000, y = 57.992, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙登场点操作台
	[44010] = { config_id = 44010, gadget_id = 70360001, pos = { x = 460.181, y = 122.283, z = -730.311 }, rot = { x = 0.000, y = 328.392, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙登场坐点
	[44011] = { config_id = 44011, gadget_id = 70310174, pos = { x = 457.606, y = 122.329, z = -726.097 }, rot = { x = 0.000, y = 150.042, z = 0.000 }, level = 20, area_id = 401 },
	-- 侍从丙登场坐点
	[44012] = { config_id = 44012, gadget_id = 70310174, pos = { x = 460.037, y = 122.258, z = -730.046 }, rot = { x = 0.000, y = 330.534, z = 0.000 }, level = 20, area_id = 401 },
	-- 公主登场坐点
	[44013] = { config_id = 44013, gadget_id = 70310174, pos = { x = 457.610, y = 122.312, z = -733.531 }, rot = { x = 0.000, y = 58.169, z = 0.000 }, level = 20, area_id = 401 },
	[44015] = { config_id = 44015, gadget_id = 70310398, pos = { x = 460.278, y = 122.314, z = -730.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[44016] = { config_id = 44016, gadget_id = 70310398, pos = { x = 457.434, y = 122.354, z = -725.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[44017] = { config_id = 44017, gadget_id = 70310398, pos = { x = 457.297, y = 122.362, z = -733.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[44018] = { config_id = 44018, gadget_id = 70310473, pos = { x = 465.113, y = 120.000, z = -722.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[44019] = { config_id = 44019, gadget_id = 70310473, pos = { x = 466.762, y = 120.000, z = -725.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[44020] = { config_id = 44020, gadget_id = 70310473, pos = { x = 468.592, y = 120.000, z = -728.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[44021] = { config_id = 44021, gadget_id = 70310309, pos = { x = 458.088, y = 122.282, z = -726.958 }, rot = { x = 0.000, y = 149.988, z = 0.000 }, level = 20, area_id = 401 },
	[44022] = { config_id = 44022, gadget_id = 70310309, pos = { x = 458.987, y = 122.314, z = -732.760 }, rot = { x = 0.000, y = 60.472, z = 0.000 }, level = 20, area_id = 401 },
	[44023] = { config_id = 44023, gadget_id = 70211101, pos = { x = 466.544, y = 121.200, z = -731.038 }, rot = { x = 0.000, y = 62.838, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	-- 公主起始点
	[44026] = { config_id = 44026, gadget_id = 70310189, pos = { x = 457.394, y = 122.349, z = -733.678 }, rot = { x = 0.000, y = 57.992, z = 0.000 }, level = 1, area_id = 401 },
	-- 公主站点
	[44027] = { config_id = 44027, gadget_id = 70310189, pos = { x = 460.260, y = 122.349, z = -732.022 }, rot = { x = 0.000, y = 23.032, z = 0.000 }, level = 1, area_id = 401 },
	-- 恶龙起始点
	[44028] = { config_id = 44028, gadget_id = 70310189, pos = { x = 457.452, y = 122.329, z = -725.871 }, rot = { x = 0.000, y = 148.414, z = 0.000 }, level = 1, area_id = 401 },
	-- 恶龙站点
	[44029] = { config_id = 44029, gadget_id = 70310189, pos = { x = 458.825, y = 122.329, z = -728.204 }, rot = { x = 0.000, y = 148.414, z = 0.000 }, level = 1, area_id = 401 },
	-- 侍从丙始点
	[44030] = { config_id = 44030, gadget_id = 70310189, pos = { x = 460.181, y = 122.283, z = -730.311 }, rot = { x = 0.000, y = 328.392, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	[44014] = { config_id = 44014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 472.816, y = 118.819, z = -721.347 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1044014, name = "ENTER_REGION_44014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1044024, name = "VARIABLE_CHANGE_44024", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_44024", action = "action_EVENT_VARIABLE_CHANGE_44024", trigger_count = 0 },
	{ config_id = 1044025, name = "GROUP_LOAD_44025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_44025", action = "action_EVENT_GROUP_LOAD_44025", trigger_count = 0 }
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
		regions = { 44014 },
		triggers = { "ENTER_REGION_44014", "VARIABLE_CHANGE_44024", "GROUP_LOAD_44025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 44001, 44002, 44004, 44007, 44011, 44012, 44013, 44021, 44022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 44008, 44016, 44018, 44019, 44020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 44009, 44017, 44018, 44020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 44010, 44015, 44020 },
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
function condition_EVENT_VARIABLE_CHANGE_44024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_44024(context, evt)
	-- 创建id为44023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_44025(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44025(context, evt)
	-- 创建id为44023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"