-- 基础信息
local base_info = {
	group_id = 250050001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1003, monster_id = 21010101, pos = { x = 0.731, y = 0.028, z = -7.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 21010101, pos = { x = 6.087, y = 0.028, z = -7.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 21010101, pos = { x = 4.317, y = 0.028, z = 5.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 21010101, pos = { x = -0.554, y = 0.028, z = 5.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 20011001, pos = { x = 2.086, y = 0.028, z = -1.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2.169, y = 0.028, z = -1.610 } }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001" },
	{ config_id = 1001002, name = "ANY_MONSTER_DIE_1002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1002", action = "action_EVENT_ANY_MONSTER_DIE_1002" },
	{ config_id = 1001018, name = "ANY_MONSTER_DIE_1018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1018", action = "action_EVENT_ANY_MONSTER_DIE_1018" }
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
		monsters = { 1003, 1004, 1007, 1008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 1001 },
		triggers = { "ENTER_REGION_1001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1001(context, evt)
	if evt.param1 ~= 1001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1001(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250050001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250050001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250050001, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250050001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250050001, 2)
	
	return 0
end