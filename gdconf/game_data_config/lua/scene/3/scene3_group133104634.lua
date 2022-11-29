-- 基础信息
local base_info = {
	group_id = 133104634
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 634001, monster_id = 20011001, pos = { x = -104.949, y = 269.560, z = 715.098 }, rot = { x = 0.000, y = 82.833, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 634002, monster_id = 20011001, pos = { x = -104.224, y = 266.643, z = 716.013 }, rot = { x = 0.000, y = 73.343, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 634003, monster_id = 20011001, pos = { x = -103.610, y = 267.601, z = 714.013 }, rot = { x = 0.000, y = 56.721, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 634004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -99.707, y = 262.391, z = 719.480 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1634004, name = "ENTER_REGION_634004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_634004", action = "action_EVENT_ENTER_REGION_634004" }
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
		regions = { 634004 },
		triggers = { "ENTER_REGION_634004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 634001, 634002, 634003 },
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
function condition_EVENT_ENTER_REGION_634004(context, evt)
	if evt.param1 ~= 634004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_634004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104634, 2)
	
	return 0
end