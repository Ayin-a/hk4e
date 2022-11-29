-- 基础信息
local base_info = {
	group_id = 199002020
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
                        [20001] = 1110574,
                        [20012] = 1110683,
                },
        },
        --可拾取的gadget列表，即not in any suite的夜鸦雕像
        pickable_gadget = 
        {
                [20012] = {0, 20024}, 
        },
        --行动序列
        actions = 
        {
                {
                          [1] = { config_id = 20001, reminder_id = 1110570, point_array = 0, point_id_list = 0, duration = 41},
                },
                {
                          [1] = { config_id = 20012, reminder_id = 1110575, point_array = 900200007, point_id_list = {1,2,3,4,5,6,7,8}, duration = 25},
                          [2] = { config_id = 20002, reminder_id = 1110578, point_array = 900200008, point_id_list = {1,2,3}, duration = 5},
                          [3] = { config_id = 20012, reminder_id = 1110579, point_array = 900200009, point_id_list = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19}, duration = 74},
                          [4] = { config_id = 20002, reminder_id = 1110587, point_array = 900200010, point_id_list = {1,2,3}, duration = 24},
                          [5] = { config_id = 20012, reminder_id = 1110590, point_array = 900200139, point_id_list = {1,2,3,4,5,6,7}, duration = 42},
                          [6] = { config_id = 20012, reminder_id = 0, point_array = 0, point_id_list = 0, arg=1, duration = 1},
                },
        },

        --每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
        --key是阶段id
        question_suits =  
        {
                   [1] = { add_suite = 3, correct_slot = 20011, correct_gadget = 20012},
        },
no_actor = 20001

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
	[20001] = { config_id = 20001, gadget_id = 70310175, pos = { x = 577.980, y = 263.526, z = -535.765 }, rot = { x = 0.000, y = 29.969, z = 0.000 }, level = 1, area_id = 401 },
	-- 国王
	[20002] = { config_id = 20002, gadget_id = 70310173, pos = { x = 583.637, y = 263.672, z = -537.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	-- 公主
	[20003] = { config_id = 20003, gadget_id = 70310173, pos = { x = 581.005, y = 263.541, z = -538.700 }, rot = { x = 0.000, y = 9.933, z = 0.000 }, level = 1, area_id = 401 },
	[20004] = { config_id = 20004, gadget_id = 70310398, pos = { x = 588.523, y = 263.669, z = -537.499 }, rot = { x = 0.000, y = 266.467, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙登场点
	[20005] = { config_id = 20005, gadget_id = 70310174, pos = { x = 588.230, y = 263.672, z = -537.506 }, rot = { x = 0.000, y = 267.023, z = 0.000 }, level = 1, area_id = 401 },
	[20007] = { config_id = 20007, gadget_id = 70310473, pos = { x = 583.138, y = 259.877, z = -526.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 忠诚的侍从
	[20008] = { config_id = 20008, gadget_id = 70310265, pos = { x = 579.851, y = 263.541, z = -537.746 }, rot = { x = 0.000, y = 9.933, z = 0.000 }, level = 20, area_id = 401 },
	[20009] = { config_id = 20009, gadget_id = 70310310, pos = { x = 587.380, y = 263.634, z = -537.520 }, rot = { x = 0.000, y = 268.502, z = 0.000 }, level = 20, area_id = 401 },
	[20010] = { config_id = 20010, gadget_id = 70310311, pos = { x = 586.143, y = 263.634, z = -537.460 }, rot = { x = 0.000, y = 89.386, z = 0.000 }, level = 20, area_id = 401 },
	-- 恶龙登场操作台
	[20011] = { config_id = 20011, gadget_id = 70360001, pos = { x = 588.523, y = 263.669, z = -537.499 }, rot = { x = 0.000, y = 266.467, z = 0.000 }, level = 1, area_id = 401 },
	-- 恶龙
	[20012] = { config_id = 20012, gadget_id = 70310173, pos = { x = 583.138, y = 262.437, z = -526.024 }, rot = { x = 0.000, y = 177.949, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[20013] = { config_id = 20013, gadget_id = 70310310, pos = { x = 586.136, y = 263.634, z = -536.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[20014] = { config_id = 20014, gadget_id = 70310310, pos = { x = 583.627, y = 263.634, z = -536.294 }, rot = { x = 0.000, y = 358.927, z = 0.000 }, level = 20, area_id = 401 },
	[20015] = { config_id = 20015, gadget_id = 70310311, pos = { x = 583.645, y = 263.634, z = -537.511 }, rot = { x = 0.000, y = 89.133, z = 0.000 }, level = 20, area_id = 401 },
	[20016] = { config_id = 20016, gadget_id = 70310310, pos = { x = 584.886, y = 263.634, z = -537.568 }, rot = { x = 0.000, y = 89.132, z = 0.000 }, level = 20, area_id = 401 },
	[20017] = { config_id = 20017, gadget_id = 70310310, pos = { x = 582.393, y = 263.634, z = -537.621 }, rot = { x = 0.000, y = 268.885, z = 0.000 }, level = 20, area_id = 401 },
	[20018] = { config_id = 20018, gadget_id = 70310312, pos = { x = 581.188, y = 263.618, z = -537.585 }, rot = { x = 0.000, y = 180.305, z = 0.000 }, level = 20, area_id = 401 },
	[20019] = { config_id = 20019, gadget_id = 70310310, pos = { x = 581.089, y = 263.634, z = -536.367 }, rot = { x = 0.000, y = 359.652, z = 0.000 }, level = 20, area_id = 401 },
	[20020] = { config_id = 20020, gadget_id = 70211101, pos = { x = 586.722, y = 262.560, z = -531.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	-- 恶龙存档点
	[20024] = { config_id = 20024, gadget_id = 70310189, pos = { x = 588.523, y = 263.669, z = -537.499 }, rot = { x = 0.000, y = 266.467, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	-- 离开即重置剧场
	[20006] = { config_id = 20006, shape = RegionShape.SPHERE, radius = 20, pos = { x = 582.460, y = 261.578, z = -531.711 }, area_id = 401 },
	[20023] = { config_id = 20023, shape = RegionShape.SPHERE, radius = 5, pos = { x = 582.588, y = 270.939, z = -528.973 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 离开即重置剧场
	{ config_id = 1020006, name = "ENTER_REGION_20006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1020021, name = "VARIABLE_CHANGE_20021", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_done", condition = "condition_EVENT_VARIABLE_CHANGE_20021", action = "action_EVENT_VARIABLE_CHANGE_20021", trigger_count = 0 },
	{ config_id = 1020022, name = "GROUP_LOAD_20022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_20022", action = "action_EVENT_GROUP_LOAD_20022", trigger_count = 0 },
	{ config_id = 1020023, name = "ENTER_REGION_20023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 20023 },
		triggers = { "VARIABLE_CHANGE_20021", "GROUP_LOAD_20022", "ENTER_REGION_20023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 20001, 20002, 20003, 20005, 20008, 20009, 20010, 20013, 20014, 20015, 20016, 20017, 20018, 20019 },
		regions = { 20006 },
		triggers = { "ENTER_REGION_20006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 20004, 20007, 20011 },
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
function condition_EVENT_VARIABLE_CHANGE_20021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_20021(context, evt)
	-- 创建id为20020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 20020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_20022(context, evt)
	-- 判断变量"is_done"为1
	if ScriptLib.GetGroupVariableValue(context, "is_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_20022(context, evt)
	-- 创建id为20020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 20020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/CrowTheatre_Howdunit"