-- 基础信息
local base_info = {
	group_id = 250014002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21011001, pos = { x = 57.584, y = 0.800, z = 9.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1019 } },
	{ config_id = 2002, monster_id = 21011001, pos = { x = 48.529, y = 0.800, z = 5.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1019 } },
	{ config_id = 2003, monster_id = 21011001, pos = { x = 67.015, y = 0.800, z = 5.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1019 } },
	{ config_id = 2004, monster_id = 21010101, pos = { x = 57.670, y = 0.800, z = 4.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 21010201, pos = { x = 55.280, y = 0.800, z = -4.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 21010201, pos = { x = 60.280, y = 0.800, z = -4.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 2, shape = RegionShape.SPHERE, radius = 5, pos = { x = 56.889, y = 0.800, z = -25.557 } }
}

-- 触发器
triggers = {
	{ config_id = 1000002, name = "ENTER_REGION_2", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2", action = "action_EVENT_ENTER_REGION_2" },
	{ config_id = 1000008, name = "ANY_MONSTER_DIE_8", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8", action = "action_EVENT_ANY_MONSTER_DIE_8" }
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
	suite = 2,
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
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { 2 },
		triggers = { "ENTER_REGION_2" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2(context, evt)
	if evt.param1 ~= 2 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250014002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250014002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250014002, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end