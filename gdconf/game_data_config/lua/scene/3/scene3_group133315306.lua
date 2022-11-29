-- 基础信息
local base_info = {
	group_id = 133315306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306001, monster_id = 20010401, pos = { x = 225.288, y = 236.988, z = 2239.236 }, rot = { x = 0.000, y = 303.583, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 20 },
	{ config_id = 306002, monster_id = 20010301, pos = { x = 230.527, y = 237.677, z = 2240.020 }, rot = { x = 0.000, y = 285.304, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 306003, monster_id = 20010301, pos = { x = 226.223, y = 237.075, z = 2236.044 }, rot = { x = 0.000, y = 298.462, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 306004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 228.329, y = 239.826, z = 2238.628 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1306004, name = "ENTER_REGION_306004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306004", action = "action_EVENT_ENTER_REGION_306004" }
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
		regions = { 306004 },
		triggers = { "ENTER_REGION_306004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 306001, 306002, 306003 },
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
function condition_EVENT_ENTER_REGION_306004(context, evt)
	if evt.param1 ~= 306004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_306004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315306, 2)
	
	return 0
end