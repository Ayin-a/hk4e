-- 基础信息
local base_info = {
	group_id = 133104063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63002, monster_id = 21010901, pos = { x = 642.135, y = 206.789, z = 888.106 }, rot = { x = 0.000, y = 235.227, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 63003, monster_id = 21010501, pos = { x = 636.912, y = 207.278, z = 875.475 }, rot = { x = 0.000, y = 301.966, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 63001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 629.191, y = 204.701, z = 881.873 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1063001, name = "ENTER_REGION_63001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63001", action = "action_EVENT_ENTER_REGION_63001" }
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
		regions = { 63001 },
		triggers = { "ENTER_REGION_63001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 63002, 63003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_63001(context, evt)
	if evt.param1 ~= 63001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_63001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104063, 2)
	
	return 0
end