-- 基础信息
local base_info = {
	group_id = 133213207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207001, monster_id = 20011001, pos = { x = -3214.105, y = 200.988, z = -3298.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 12 },
	{ config_id = 207002, monster_id = 20011001, pos = { x = -3212.618, y = 200.988, z = -3299.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 12 },
	{ config_id = 207003, monster_id = 20011001, pos = { x = -3215.588, y = 200.988, z = -3299.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 12 },
	{ config_id = 207006, monster_id = 20011101, pos = { x = -3212.604, y = 200.285, z = -3293.843 }, rot = { x = 350.097, y = 188.097, z = 0.380 }, level = 27, drop_tag = "大史莱姆", area_id = 12 },
	{ config_id = 207007, monster_id = 20010901, pos = { x = -3215.625, y = 200.559, z = -3305.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 207004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3214.115, y = 200.988, z = -3299.368 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1207004, name = "ENTER_REGION_207004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_207004", action = "action_EVENT_ENTER_REGION_207004" },
	{ config_id = 1207005, name = "ANY_MONSTER_DIE_207005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_207005", action = "action_EVENT_ANY_MONSTER_DIE_207005" }
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
		regions = { 207004 },
		triggers = { "ENTER_REGION_207004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 207001, 207002, 207003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_207005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 207006, 207007 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_207004(context, evt)
	if evt.param1 ~= 207004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_207004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213207, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_207005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213207) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_207005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213207, 3)
	
	return 0
end