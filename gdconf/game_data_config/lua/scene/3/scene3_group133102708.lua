-- 基础信息
local base_info = {
	group_id = 133102708
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 708001, monster_id = 25010103, pos = { x = 1632.282, y = 211.696, z = 150.437 }, rot = { x = 0.000, y = 78.119, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1021 }, area_id = 5 },
	{ config_id = 708002, monster_id = 25010104, pos = { x = 1631.764, y = 212.303, z = 152.976 }, rot = { x = 0.000, y = 75.386, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1021 }, area_id = 5 },
	{ config_id = 708004, monster_id = 25010204, pos = { x = 1631.273, y = 211.833, z = 150.794 }, rot = { x = 0.000, y = 65.219, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1021 }, area_id = 5 },
	{ config_id = 708005, monster_id = 25010302, pos = { x = 1632.735, y = 212.052, z = 152.255 }, rot = { x = 0.000, y = 74.584, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1021 }, area_id = 5 },
	{ config_id = 708006, monster_id = 25010201, pos = { x = 1623.400, y = 215.301, z = 157.659 }, rot = { x = 0.000, y = 109.371, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1021 }, area_id = 5 },
	{ config_id = 708007, monster_id = 25010201, pos = { x = 1626.310, y = 215.509, z = 161.586 }, rot = { x = 0.000, y = 176.875, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1021 }, area_id = 5 },
	{ config_id = 708008, monster_id = 25030201, pos = { x = 1624.687, y = 215.459, z = 159.845 }, rot = { x = 0.000, y = 143.230, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1021 }, isElite = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1708003, name = "ANY_MONSTER_DIE_708003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_708003", action = "action_EVENT_ANY_MONSTER_DIE_708003", trigger_count = 0 },
	{ config_id = 1708009, name = "ANY_MONSTER_DIE_708009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_708009", action = "action_EVENT_ANY_MONSTER_DIE_708009", trigger_count = 0 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 708001, 708002, 708004, 708005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_708003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 708006, 708007, 708008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_708009" },
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
function condition_EVENT_ANY_MONSTER_DIE_708003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102708) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_708003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102708, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_708009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102708) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_708009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102708") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end