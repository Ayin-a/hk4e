-- 基础信息
local base_info = {
	group_id = 250014001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010201, pos = { x = 55.758, y = 0.800, z = -78.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 21010201, pos = { x = 58.693, y = 0.800, z = -78.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 21010201, pos = { x = 61.699, y = 0.800, z = -78.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 21010201, pos = { x = 61.454, y = 0.800, z = -76.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 21010201, pos = { x = 58.529, y = 0.800, z = -76.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 21010201, pos = { x = 55.740, y = 0.800, z = -76.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 21010101, pos = { x = 69.091, y = 0.800, z = -86.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 21010101, pos = { x = 59.193, y = 0.800, z = -90.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, monster_id = 21010101, pos = { x = 49.316, y = 0.800, z = -86.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 21010101, pos = { x = 69.091, y = 0.800, z = -86.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, monster_id = 21010101, pos = { x = 63.038, y = 0.800, z = -84.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, monster_id = 21010101, pos = { x = 55.283, y = 0.800, z = -84.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 1, shape = RegionShape.SPHERE, radius = 5, pos = { x = 59.478, y = 0.800, z = -59.290 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "action_EVENT_ENTER_REGION_1" },
	{ config_id = 1000007, name = "ANY_MONSTER_DIE_7", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7", action = "action_EVENT_ANY_MONSTER_DIE_7" },
	{ config_id = 1000015, name = "ANY_MONSTER_DIE_15", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15", action = "action_EVENT_ANY_MONSTER_DIE_15" }
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
	suite = 3,
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
		-- description = suite_5,
		monsters = { 1001, 1002, 1003, 1007, 1008, 1009, 1011, 1012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_6,
		monsters = { 1004, 1005, 1006, 1010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_7,
		monsters = { },
		gadgets = { },
		regions = { 1 },
		triggers = { "ENTER_REGION_1" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1(context, evt)
	if evt.param1 ~= 1 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250014001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250014001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250014001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250014001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250014001, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end