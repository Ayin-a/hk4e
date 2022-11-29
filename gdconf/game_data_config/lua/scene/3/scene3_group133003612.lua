-- 基础信息
local base_info = {
	group_id = 133003612
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 612001, monster_id = 20010301, pos = { x = 2087.952, y = 228.384, z = -1724.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 612002, monster_id = 20010301, pos = { x = 2089.440, y = 228.663, z = -1725.461 }, rot = { x = 0.000, y = 35.207, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 612003, monster_id = 20010301, pos = { x = 2085.149, y = 228.642, z = -1726.952 }, rot = { x = 0.000, y = 33.099, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 612004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2087.942, y = 228.607, z = -1725.439 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1612004, name = "ENTER_REGION_612004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_612004", action = "action_EVENT_ENTER_REGION_612004" }
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
		regions = { 612004 },
		triggers = { "ENTER_REGION_612004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 612001, 612002, 612003 },
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
function condition_EVENT_ENTER_REGION_612004(context, evt)
	if evt.param1 ~= 612004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_612004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003612, 2)
	
	return 0
end