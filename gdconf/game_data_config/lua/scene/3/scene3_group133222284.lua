-- 基础信息
local base_info = {
	group_id = 133222284
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 284001, monster_id = 20011001, pos = { x = -4675.681, y = 120.032, z = -4282.448 }, rot = { x = 0.000, y = 282.371, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 },
	{ config_id = 284002, monster_id = 20011001, pos = { x = -4677.298, y = 120.134, z = -4286.199 }, rot = { x = 0.000, y = 331.877, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 284004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4682.477, y = 120.511, z = -4281.846 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1284004, name = "ENTER_REGION_284004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284004", action = "action_EVENT_ENTER_REGION_284004" }
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
		regions = { 284004 },
		triggers = { "ENTER_REGION_284004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 284001, 284002 },
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
function condition_EVENT_ENTER_REGION_284004(context, evt)
	if evt.param1 ~= 284004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_284004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222284, 2)
	
	return 0
end