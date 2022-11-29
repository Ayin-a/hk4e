-- 基础信息
local base_info = {
	group_id = 133002350
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 350001, monster_id = 21010201, pos = { x = 1895.234, y = 234.085, z = -311.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 350002, monster_id = 21010201, pos = { x = 1894.500, y = 234.665, z = -319.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 350003, monster_id = 21010201, pos = { x = 1901.543, y = 235.969, z = -322.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 350005, monster_id = 21010201, pos = { x = 1905.339, y = 234.527, z = -313.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 350004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1899.786, y = 234.980, z = -315.936 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1350004, name = "ENTER_REGION_350004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_350004", action = "action_EVENT_ENTER_REGION_350004" }
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
		regions = { 350004 },
		triggers = { "ENTER_REGION_350004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 350001, 350002, 350003, 350005 },
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
function condition_EVENT_ENTER_REGION_350004(context, evt)
	if evt.param1 ~= 350004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_350004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002350, 2)
	
	return 0
end