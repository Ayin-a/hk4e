-- 基础信息
local base_info = {
	group_id = 133004435
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 435001, monster_id = 21010901, pos = { x = 2716.070, y = 250.374, z = -402.406 }, rot = { x = 0.000, y = 35.449, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 4 },
	{ config_id = 435002, monster_id = 21010501, pos = { x = 2735.728, y = 253.163, z = -406.445 }, rot = { x = 0.000, y = 332.418, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 435003, monster_id = 21011001, pos = { x = 2726.640, y = 247.087, z = -425.098 }, rot = { x = 0.000, y = 325.611, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 435004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2722.423, y = 250.029, z = -388.136 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1435004, name = "ENTER_REGION_435004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_435004", action = "action_EVENT_ENTER_REGION_435004" }
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
		regions = { 435004 },
		triggers = { "ENTER_REGION_435004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 435001, 435002, 435003 },
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
function condition_EVENT_ENTER_REGION_435004(context, evt)
	if evt.param1 ~= 435004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_435004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004435, 2)
	
	return 0
end