-- 基础信息
local base_info = {
	group_id = 133102302
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 302001, monster_id = 26060101, pos = { x = 1597.891, y = 284.437, z = 364.733 }, rot = { x = 0.000, y = 202.566, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 302002, monster_id = 26060101, pos = { x = 1597.135, y = 284.529, z = 362.898 }, rot = { x = 0.000, y = 274.438, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 302003, monster_id = 26060101, pos = { x = 1599.087, y = 284.762, z = 361.567 }, rot = { x = 0.000, y = 264.412, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 302004, monster_id = 26060101, pos = { x = 1599.862, y = 285.003, z = 364.463 }, rot = { x = 0.000, y = 246.793, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 302005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1596.980, y = 284.581, z = 363.814 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1302005, name = "ENTER_REGION_302005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302005", action = "action_EVENT_ENTER_REGION_302005" }
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
		regions = { 302005 },
		triggers = { "ENTER_REGION_302005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 302001, 302002, 302003, 302004 },
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
function condition_EVENT_ENTER_REGION_302005(context, evt)
	if evt.param1 ~= 302005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_302005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102302, 2)
	
	return 0
end