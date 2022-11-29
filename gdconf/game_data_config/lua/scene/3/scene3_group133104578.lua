-- 基础信息
local base_info = {
	group_id = 133104578
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 578001, monster_id = 20011301, pos = { x = 79.882, y = 254.745, z = 319.128 }, rot = { x = 0.000, y = 136.628, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 },
	{ config_id = 578004, monster_id = 20011101, pos = { x = 75.948, y = 255.472, z = 317.489 }, rot = { x = 0.000, y = 111.000, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 },
	{ config_id = 578005, monster_id = 20010501, pos = { x = 82.163, y = 254.890, z = 321.300 }, rot = { x = 0.000, y = 176.952, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 },
	{ config_id = 578006, monster_id = 20010501, pos = { x = 75.858, y = 254.032, z = 309.166 }, rot = { x = 0.000, y = 74.709, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 },
	{ config_id = 578007, monster_id = 20010701, pos = { x = 86.747, y = 254.207, z = 319.700 }, rot = { x = 0.000, y = 207.298, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 },
	{ config_id = 578009, monster_id = 20011001, pos = { x = 79.647, y = 252.756, z = 305.141 }, rot = { x = 0.000, y = 359.735, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 },
	{ config_id = 578010, monster_id = 20011001, pos = { x = 83.483, y = 252.058, z = 304.670 }, rot = { x = 0.000, y = 338.535, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 },
	{ config_id = 578011, monster_id = 20010904, pos = { x = 86.125, y = 251.287, z = 305.334 }, rot = { x = 0.000, y = 359.735, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 578003, gadget_id = 70300052, pos = { x = 84.234, y = 252.498, z = 312.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1578002, name = "ANY_MONSTER_DIE_578002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_578002", action = "action_EVENT_ANY_MONSTER_DIE_578002" },
	{ config_id = 1578008, name = "ANY_MONSTER_DIE_578008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_578008", action = "action_EVENT_ANY_MONSTER_DIE_578008" },
	{ config_id = 1578012, name = "ANY_MONSTER_DIE_578012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_578012", action = "action_EVENT_ANY_MONSTER_DIE_578012" }
}

-- 变量
variables = {
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 578003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 578004, 578005, 578006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_578002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 578001, 578007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_578008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 578009, 578010, 578011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_578012" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_578002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_578002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104578, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_578008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_578008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104578, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_578012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_578012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104578") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end