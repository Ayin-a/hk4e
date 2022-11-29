-- 基础信息
local base_info = {
	group_id = 155005093
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 20011401, pos = { x = 583.889, y = 190.233, z = 805.677 }, rot = { x = 0.000, y = 114.795, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 93002, monster_id = 20011401, pos = { x = 592.131, y = 189.636, z = 800.052 }, rot = { x = 0.000, y = 311.846, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 93003, monster_id = 20011401, pos = { x = 593.426, y = 189.614, z = 801.609 }, rot = { x = 0.000, y = 296.869, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 93005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 588.224, y = 190.079, z = 802.933 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1093005, name = "ENTER_REGION_93005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93005", action = "action_EVENT_ENTER_REGION_93005" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 93005 },
		triggers = { "ENTER_REGION_93005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 93001, 93002, 93003 },
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
function condition_EVENT_ENTER_REGION_93005(context, evt)
	if evt.param1 ~= 93005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005093, 2)
	
	return 0
end