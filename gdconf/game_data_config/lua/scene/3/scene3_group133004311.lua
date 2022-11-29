-- 基础信息
local base_info = {
	group_id = 133004311
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 311005, monster_id = 20011201, pos = { x = 2499.075, y = 246.760, z = -387.138 }, rot = { x = 0.000, y = 126.848, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 311006, monster_id = 20011201, pos = { x = 2497.231, y = 246.530, z = -389.469 }, rot = { x = 0.000, y = 100.399, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 311007, monster_id = 20011301, pos = { x = 2500.001, y = 246.890, z = -389.547 }, rot = { x = 0.000, y = 128.114, z = 0.000 }, level = 12, drop_tag = "大史莱姆", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 311004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2499.463, y = 246.819, z = -389.080 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1311004, name = "ENTER_REGION_311004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_311004", action = "action_EVENT_ENTER_REGION_311004" }
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
		regions = { 311004 },
		triggers = { "ENTER_REGION_311004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 311005, 311006, 311007 },
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
function condition_EVENT_ENTER_REGION_311004(context, evt)
	if evt.param1 ~= 311004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_311004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004311, 2)
	
	return 0
end