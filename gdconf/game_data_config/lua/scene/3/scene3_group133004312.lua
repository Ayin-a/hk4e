-- 基础信息
local base_info = {
	group_id = 133004312
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312005, monster_id = 20010501, pos = { x = 2750.178, y = 251.468, z = -369.917 }, rot = { x = 0.000, y = 186.945, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 312006, monster_id = 20010701, pos = { x = 2750.758, y = 251.537, z = -367.755 }, rot = { x = 0.000, y = 209.273, z = 0.000 }, level = 12, drop_tag = "大史莱姆", area_id = 4 },
	{ config_id = 312007, monster_id = 20010501, pos = { x = 2748.777, y = 250.973, z = -367.149 }, rot = { x = 0.000, y = 150.903, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 312004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2751.098, y = 252.321, z = -368.764 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1312004, name = "ENTER_REGION_312004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_312004", action = "action_EVENT_ENTER_REGION_312004" }
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
		regions = { 312004 },
		triggers = { "ENTER_REGION_312004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 312005, 312006, 312007 },
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
function condition_EVENT_ENTER_REGION_312004(context, evt)
	if evt.param1 ~= 312004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_312004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004312, 2)
	
	return 0
end