-- 基础信息
local base_info = {
	group_id = 199002111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 20011001, pos = { x = 473.554, y = 124.743, z = -444.546 }, rot = { x = 0.000, y = 39.551, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 111002, monster_id = 20011001, pos = { x = 475.042, y = 124.743, z = -445.771 }, rot = { x = 0.000, y = 39.551, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 111003, monster_id = 20011001, pos = { x = 472.072, y = 124.743, z = -445.679 }, rot = { x = 0.000, y = 39.551, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 111005, monster_id = 20011001, pos = { x = 482.156, y = 128.022, z = -435.520 }, rot = { x = 0.000, y = 62.256, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 111004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 473.544, y = 122.655, z = -445.748 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1111004, name = "ENTER_REGION_111004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_111004", action = "action_EVENT_ENTER_REGION_111004" }
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
		monsters = { 111005 },
		gadgets = { },
		regions = { 111004 },
		triggers = { "ENTER_REGION_111004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 111001, 111002, 111003 },
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
function condition_EVENT_ENTER_REGION_111004(context, evt)
	if evt.param1 ~= 111004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_111004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002111, 2)
	
	return 0
end