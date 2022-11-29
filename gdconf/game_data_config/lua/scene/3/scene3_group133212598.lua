-- 基础信息
local base_info = {
	group_id = 133212598
}

-- DEFS_MISCS
local defs = {

        group_id = 133212598,

        --触发开始/接续挑战的region
        start_region_id = 598011,

        -- 挑战index
        ChallengeIndex = 1002,

        --玩法限定region，出圈触发暂离
        level_region_id = 598011,

        --挑战id
        challenge_id = 2003006,

        --目标开笼子数
        taget_score = 2,

        --目标捕捉数，配在陈列室表里，每个营地对应各自的陈列室ID
        exhibition_id = 10801004,

        -- 需要消灭多少个怪物牢笼才可以交互
        Monster_Count = 6,

        --目标笼子
        --格式为[笼configID] = {老狗configID, 新狗configID}
        target_id = {
                [598001] = {598003, 598025},
                [598002] = {598004, 598026},
        },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[598003] = { config_id = 598003, monster_id = 28020403, pos = { x = -3456.171, y = 207.309, z = -2146.037 }, rot = { x = 0.000, y = 205.973, z = 0.000 }, level = 25, drop_tag = "走兽", disableWander = true, affix = { 1039 }, isOneoff = true, pose_id = 4, area_id = 13 },
	[598004] = { config_id = 598004, monster_id = 28020403, pos = { x = -3467.200, y = 206.229, z = -2132.947 }, rot = { x = 0.000, y = 166.739, z = 0.000 }, level = 25, drop_tag = "走兽", disableWander = true, affix = { 1039 }, isOneoff = true, pose_id = 4, area_id = 13 },
	[598012] = { config_id = 598012, monster_id = 25030301, pos = { x = -3459.201, y = 207.723, z = -2157.978 }, rot = { x = 0.000, y = 95.276, z = 0.000 }, level = 25, drop_tag = "盗宝团", isOneoff = true, area_id = 13 },
	[598013] = { config_id = 598013, monster_id = 25080101, pos = { x = -3450.812, y = 205.213, z = -2145.979 }, rot = { x = 0.000, y = 228.244, z = 0.000 }, level = 25, drop_tag = "浪人武士", isOneoff = true, pose_id = 1, area_id = 13 },
	[598014] = { config_id = 598014, monster_id = 25060101, pos = { x = -3457.309, y = 207.074, z = -2155.031 }, rot = { x = 0.000, y = 80.622, z = 0.000 }, level = 25, drop_tag = "盗宝团", disableWander = true, isOneoff = true, pose_id = 9006, area_id = 13 },
	[598015] = { config_id = 598015, monster_id = 25070101, pos = { x = -3453.242, y = 206.246, z = -2154.541 }, rot = { x = 0.000, y = 269.329, z = 0.000 }, level = 25, drop_tag = "盗宝团", disableWander = true, isOneoff = true, pose_id = 4, area_id = 13 },
	[598017] = { config_id = 598017, monster_id = 25080101, pos = { x = -3448.604, y = 204.675, z = -2146.089 }, rot = { x = 0.000, y = 231.553, z = 0.000 }, level = 25, drop_tag = "浪人武士", isOneoff = true, pose_id = 1, area_id = 13 },
	[598018] = { config_id = 598018, monster_id = 25100201, pos = { x = -3451.410, y = 205.550, z = -2148.376 }, rot = { x = 0.000, y = 264.010, z = 0.000 }, level = 25, drop_tag = "高阶武士", isOneoff = true, pose_id = 1, area_id = 13 },
	[598025] = { config_id = 598025, monster_id = 28020403, pos = { x = -3456.171, y = 207.309, z = -2146.037 }, rot = { x = 0.000, y = 205.973, z = 0.000 }, level = 25, drop_tag = "走兽", affix = { 5131 }, isOneoff = true, pose_id = 5, area_id = 13 },
	[598026] = { config_id = 598026, monster_id = 28020403, pos = { x = -3467.200, y = 206.229, z = -2132.947 }, rot = { x = 0.000, y = 166.739, z = 0.000 }, level = 25, drop_tag = "走兽", affix = { 5131 }, isOneoff = true, pose_id = 5, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[598001] = { config_id = 598001, gadget_id = 70310143, pos = { x = -3456.390, y = 207.309, z = -2146.071 }, rot = { x = 0.000, y = 201.273, z = 0.000 }, level = 27, state = GadgetState.Action03, persistent = true, interact_id = 64, area_id = 13 },
	[598002] = { config_id = 598002, gadget_id = 70310143, pos = { x = -3466.763, y = 206.170, z = -2133.013 }, rot = { x = 0.000, y = 171.439, z = 0.000 }, level = 27, state = GadgetState.Action03, persistent = true, interact_id = 64, area_id = 13 },
	[598019] = { config_id = 598019, gadget_id = 70310006, pos = { x = -3464.558, y = 207.390, z = -2148.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	[598020] = { config_id = 598020, gadget_id = 70220048, pos = { x = -3470.980, y = 210.072, z = -2156.236 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 },
	[598021] = { config_id = 598021, gadget_id = 70220048, pos = { x = -3470.815, y = 210.525, z = -2158.046 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 },
	[598022] = { config_id = 598022, gadget_id = 70220014, pos = { x = -3469.488, y = 210.388, z = -2159.359 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	[598011] = { config_id = 598011, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3462.798, y = 207.096, z = -2150.611 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1598005, name = "ANY_MONSTER_DIE_598005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_598005", action = "action_EVENT_ANY_MONSTER_DIE_598005" },
	{ config_id = 1598006, name = "ANY_MONSTER_DIE_598006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_598006", action = "action_EVENT_ANY_MONSTER_DIE_598006" },
	{ config_id = 1598023, name = "GROUP_LOAD_598023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_598023", trigger_count = 0 },
	{ config_id = 1598024, name = "ANY_MONSTER_DIE_598024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_598024", action = "action_EVENT_ANY_MONSTER_DIE_598024" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 598016, monster_id = 25100101, pos = { x = -3449.121, y = 205.100, z = -2148.911 }, rot = { x = 0.000, y = 264.010, z = 0.000 }, level = 25, drop_tag = "高阶武士", isOneoff = true, pose_id = 1, area_id = 13 }
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
		-- description = 牢笼和营地逻辑,
		monsters = { 598003, 598004 },
		gadgets = { 598001, 598002 },
		regions = { 598011 },
		triggers = { "GROUP_LOAD_598023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 营地摆设物件,
		monsters = { },
		gadgets = { 598019, 598020, 598021, 598022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 598012, 598014, 598015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_598024" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 598013, 598017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_598006" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三波怪,
		monsters = { 598018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_598005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_598005(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_598005(context, evt)
	-- 调用提示id为 400106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_598006(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_598006(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212598, 5)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_598023(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212598, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212598, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_598024(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_598024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212598, 4)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_3/HachiBattle"