-- 基础信息
local base_info = {
	group_id = 133220554
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 554001, monster_id = 20011001, pos = { x = -2933.541, y = 200.000, z = -4305.690 }, rot = { x = 0.000, y = 193.545, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 554002, monster_id = 20011001, pos = { x = -2931.298, y = 200.000, z = -4310.342 }, rot = { x = 0.000, y = 318.432, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 554003, monster_id = 20011001, pos = { x = -2935.982, y = 200.000, z = -4309.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 554005, monster_id = 20011001, pos = { x = -2930.885, y = 200.000, z = -4307.562 }, rot = { x = 0.000, y = 261.310, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 554006, monster_id = 20011001, pos = { x = -2934.342, y = 200.000, z = -4311.399 }, rot = { x = 0.000, y = 26.197, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 554007, monster_id = 20011001, pos = { x = -2935.593, y = 200.000, z = -4306.849 }, rot = { x = 0.000, y = 67.765, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 554004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2933.905, y = 200.000, z = -4309.060 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1554004, name = "ENTER_REGION_554004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_554004", action = "action_EVENT_ENTER_REGION_554004" }
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
		regions = { 554004 },
		triggers = { "ENTER_REGION_554004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 554001, 554002, 554003, 554005, 554006, 554007 },
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
function condition_EVENT_ENTER_REGION_554004(context, evt)
	if evt.param1 ~= 554004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_554004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220554, 2)
	
	return 0
end