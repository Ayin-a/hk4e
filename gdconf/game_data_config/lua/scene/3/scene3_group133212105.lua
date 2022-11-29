-- 基础信息
local base_info = {
	group_id = 133212105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105001, monster_id = 21020801, pos = { x = -3511.148, y = 200.618, z = -2791.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6110 }, area_id = 13 },
	{ config_id = 105002, monster_id = 21010902, pos = { x = -3529.509, y = 206.079, z = -2774.262 }, rot = { x = 0.000, y = 182.545, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105003, monster_id = 21011002, pos = { x = -3525.486, y = 206.204, z = -2771.589 }, rot = { x = 0.000, y = 113.772, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105004, monster_id = 21030601, pos = { x = -3521.156, y = 200.516, z = -2791.140 }, rot = { x = 0.000, y = 84.151, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 13 },
	{ config_id = 105005, monster_id = 21010701, pos = { x = -3518.845, y = 200.651, z = -2794.342 }, rot = { x = 0.000, y = 27.950, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105006, monster_id = 21010502, pos = { x = -3505.870, y = 200.703, z = -2788.256 }, rot = { x = 0.000, y = 58.578, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 105007, monster_id = 21010502, pos = { x = -3504.047, y = 200.362, z = -2791.583 }, rot = { x = 0.000, y = 53.539, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 105008, monster_id = 21010902, pos = { x = -3529.509, y = 206.079, z = -2774.262 }, rot = { x = 0.000, y = 182.545, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105009, monster_id = 21011002, pos = { x = -3525.486, y = 206.204, z = -2771.589 }, rot = { x = 0.000, y = 113.772, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105010, monster_id = 21030601, pos = { x = -3521.156, y = 200.516, z = -2791.140 }, rot = { x = 0.000, y = 84.151, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 13 },
	{ config_id = 105011, monster_id = 21020202, pos = { x = -3514.132, y = 200.574, z = -2794.946 }, rot = { x = 0.000, y = 323.148, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 13 },
	{ config_id = 105012, monster_id = 21010502, pos = { x = -3522.800, y = 200.915, z = -2798.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105013, monster_id = 21010502, pos = { x = -3519.794, y = 200.754, z = -2797.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105014, monster_id = 21010502, pos = { x = -3494.145, y = 200.552, z = -2810.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105015, monster_id = 21010502, pos = { x = -3492.676, y = 200.281, z = -2812.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105016, monster_id = 21010502, pos = { x = -3506.695, y = 201.082, z = -2784.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105017, monster_id = 21010502, pos = { x = -3504.986, y = 200.823, z = -2787.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 105018, monster_id = 25100101, pos = { x = -3508.372, y = 200.341, z = -2793.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 105019, monster_id = 25100201, pos = { x = -3517.111, y = 200.450, z = -2791.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 105020, monster_id = 25080201, pos = { x = -3523.257, y = 200.847, z = -2793.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 105021, monster_id = 25080301, pos = { x = -3517.535, y = 200.826, z = -2797.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 105022, monster_id = 25080201, pos = { x = -3498.883, y = 200.444, z = -2798.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 105023, monster_id = 25080301, pos = { x = -3497.196, y = 200.274, z = -2794.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 105024, monster_id = 25100101, pos = { x = -3508.372, y = 200.341, z = -2793.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6110 }, pose_id = 1, area_id = 13 },
	{ config_id = 105025, monster_id = 25080201, pos = { x = -3523.257, y = 200.847, z = -2793.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 1, area_id = 13 },
	{ config_id = 105026, monster_id = 25080301, pos = { x = -3517.535, y = 200.826, z = -2797.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 1, area_id = 13 },
	{ config_id = 105027, monster_id = 25080301, pos = { x = -3515.131, y = 200.546, z = -2791.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 1, area_id = 13 },
	{ config_id = 105028, monster_id = 25080201, pos = { x = -3501.620, y = 200.458, z = -2797.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 1, area_id = 13 },
	{ config_id = 105029, monster_id = 25080301, pos = { x = -3495.898, y = 200.509, z = -2800.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 1, area_id = 13 },
	{ config_id = 105030, monster_id = 25080301, pos = { x = -3493.490, y = 200.314, z = -2794.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 1, area_id = 13 },
	{ config_id = 105031, monster_id = 25100101, pos = { x = -3508.372, y = 200.341, z = -2793.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6110, 6112 }, pose_id = 1, area_id = 13 },
	{ config_id = 105032, monster_id = 21010502, pos = { x = -3505.870, y = 200.703, z = -2788.256 }, rot = { x = 0.000, y = 58.578, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 105033, monster_id = 21010502, pos = { x = -3504.047, y = 200.362, z = -2791.583 }, rot = { x = 0.000, y = 53.539, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 105034, gadget_id = 70350201, pos = { x = -3524.381, y = 200.938, z = -2799.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 105035, gadget_id = 70350201, pos = { x = -3490.777, y = 200.271, z = -2811.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 105036, gadget_id = 70350201, pos = { x = -3495.104, y = 200.453, z = -2774.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 105037, gadget_id = 70290059, pos = { x = -3529.481, y = 200.019, z = -2772.180 }, rot = { x = 0.000, y = 186.985, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105038, gadget_id = 70300081, pos = { x = -3510.979, y = 200.400, z = -2808.827 }, rot = { x = 0.000, y = 83.545, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105039, gadget_id = 70300084, pos = { x = -3499.967, y = 200.862, z = -2785.368 }, rot = { x = 0.000, y = 332.974, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105040, gadget_id = 70350201, pos = { x = -3528.627, y = 206.212, z = -2771.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105041, gadget_id = 70350201, pos = { x = -3504.301, y = 202.201, z = -2804.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105042, gadget_id = 70300102, pos = { x = -3517.225, y = 200.443, z = -2791.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105043, gadget_id = 70300087, pos = { x = -3517.370, y = 200.902, z = -2791.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105044, gadget_id = 70300106, pos = { x = -3503.297, y = 200.900, z = -2785.877 }, rot = { x = 0.000, y = 141.856, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 105045, gadget_id = 70300106, pos = { x = -3501.771, y = 200.564, z = -2789.041 }, rot = { x = 0.000, y = 141.856, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 105046, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3513.837, y = 200.582, z = -2791.305 }, area_id = 13 },
	{ config_id = 105048, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3513.837, y = 200.582, z = -2791.305 }, area_id = 13 },
	{ config_id = 105051, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3513.837, y = 200.582, z = -2791.305 }, area_id = 13 },
	{ config_id = 105053, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3513.837, y = 200.582, z = -2791.305 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1105046, name = "ENTER_REGION_105046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_105046" },
	{ config_id = 1105047, name = "TIMER_EVENT_105047", event = EventType.EVENT_TIMER_EVENT, source = "T1", condition = "", action = "action_EVENT_TIMER_EVENT_105047" },
	{ config_id = 1105048, name = "ENTER_REGION_105048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_105048" },
	{ config_id = 1105049, name = "TIMER_EVENT_105049", event = EventType.EVENT_TIMER_EVENT, source = "T2", condition = "", action = "action_EVENT_TIMER_EVENT_105049" },
	{ config_id = 1105050, name = "ANY_MONSTER_LIVE_105050", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_105050", action = "action_EVENT_ANY_MONSTER_LIVE_105050" },
	{ config_id = 1105051, name = "ENTER_REGION_105051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_105051" },
	{ config_id = 1105052, name = "TIMER_EVENT_105052", event = EventType.EVENT_TIMER_EVENT, source = "T1", condition = "", action = "action_EVENT_TIMER_EVENT_105052" },
	{ config_id = 1105053, name = "ENTER_REGION_105053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_105053" },
	{ config_id = 1105054, name = "TIMER_EVENT_105054", event = EventType.EVENT_TIMER_EVENT, source = "T2", condition = "", action = "action_EVENT_TIMER_EVENT_105054" },
	{ config_id = 1105055, name = "ANY_MONSTER_LIVE_105055", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_105055", action = "action_EVENT_ANY_MONSTER_LIVE_105055" },
	{ config_id = 1105056, name = "ANY_MONSTER_LIVE_105056", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_105056", action = "action_EVENT_ANY_MONSTER_LIVE_105056" },
	{ config_id = 1105057, name = "ANY_MONSTER_LIVE_105057", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_105057", action = "action_EVENT_ANY_MONSTER_LIVE_105057" },
	{ config_id = 1105058, name = "GROUP_LOAD_105058", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_105058" },
	{ config_id = 1105059, name = "HUNTING_FINISH_FINAL_105059", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_105059" }
}

-- 点位
points = {
	{ config_id = 105060, pos = { x = -3517.189, y = 200.480, z = -2785.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_105058", "HUNTING_FINISH_FINAL_105059" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 丘丘营地布设,
		monsters = { },
		gadgets = { 105037, 105038, 105039, 105042, 105043, 105044, 105045 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 营地通用-增幅器,
		monsters = { },
		gadgets = { 105040, 105041 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 雷暴王【机关】【小怪组】,
		monsters = { 105002, 105003, 105004, 105005, 105006, 105007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 雷服暴徒【双子】【怪物组】,
		monsters = { 105008, 105009, 105010, 105011, 105032, 105033 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷暴王【机关】【小怪组】,
		monsters = { 105012, 105013, 105014, 105015, 105016, 105017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 营地通用-增幅器,
		monsters = { },
		gadgets = { 105034, 105035, 105036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 海乱鬼雷【双子】【首领本体】,
		monsters = { 105018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_105055" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 海乱鬼雷【双子】【双子怪】,
		monsters = { 105019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 海乱鬼雷【双子】【小怪组】,
		monsters = { 105020, 105021, 105022, 105023 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 海乱鬼雷【链接】【首领本体】,
		monsters = { 105024 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_105056" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 海乱鬼雷【链接】【链接小怪组1】,
		monsters = { 105025, 105026, 105027 },
		gadgets = { },
		regions = { 105051 },
		triggers = { "ENTER_REGION_105051", "TIMER_EVENT_105052" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 海乱鬼雷【链接】【链接小怪组2】,
		monsters = { 105028, 105029, 105030 },
		gadgets = { },
		regions = { 105053 },
		triggers = { "ENTER_REGION_105053", "TIMER_EVENT_105054" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 海乱鬼雷【脉冲】【首领本体】,
		monsters = { 105031 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_105057" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 雷暴王【链接】【首领本体】,
		monsters = { 105001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_105050" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
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

-- 触发操作
function action_EVENT_ENTER_REGION_105046(context, evt)
	-- 延迟30秒后,向groupId为：133212105的对象,请求一次调用,并将string参数："T1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133212105, "T1", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_105047(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133212105, 3)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212105, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_105048(context, evt)
	-- 延迟30秒后,向groupId为：133212105的对象,请求一次调用,并将string参数："T2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133212105, "T2", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_105049(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133212105, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212105, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_105050(context, evt)
	if 105001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_105050(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_105051(context, evt)
	-- 延迟30秒后,向groupId为：133212105的对象,请求一次调用,并将string参数："T1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133212105, "T1", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_105052(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 13)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133212105, 12)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212105, 12)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_105053(context, evt)
	-- 延迟30秒后,向groupId为：133212105的对象,请求一次调用,并将string参数："T2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133212105, "T2", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_105054(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 12)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133212105, 13)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212105, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_105055(context, evt)
	if 105018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_105055(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_105056(context, evt)
	if 105024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_105056(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_105057(context, evt)
	if 105031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_105057(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212105, 10)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_105058(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133212105, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_105059(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133212105, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end