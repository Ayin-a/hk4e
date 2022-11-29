-- 基础信息
local base_info = {
	group_id = 133106604
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 604001, monster_id = 20011201, pos = { x = -570.798, y = 253.690, z = 1475.731 }, rot = { x = 0.000, y = 53.515, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 604002, monster_id = 20011201, pos = { x = -573.962, y = 252.026, z = 1476.289 }, rot = { x = 0.000, y = 47.964, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 604003, monster_id = 20011201, pos = { x = -574.195, y = 252.988, z = 1473.063 }, rot = { x = 0.000, y = 37.200, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 604004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -572.722, y = 252.988, z = 1472.994 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1604004, name = "ENTER_REGION_604004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_604004", action = "action_EVENT_ENTER_REGION_604004" }
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
		monsters = { 604001, 604002 },
		gadgets = { },
		regions = { 604004 },
		triggers = { "ENTER_REGION_604004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 604003 },
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
function condition_EVENT_ENTER_REGION_604004(context, evt)
	if evt.param1 ~= 604004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_604004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106604, 2)
	
	return 0
end