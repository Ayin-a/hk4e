-- 基础信息
local base_info = {
	group_id = 133310349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349001, monster_id = 25210202, pos = { x = -2238.845, y = 143.579, z = 5080.257 }, rot = { x = 0.000, y = 156.937, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 349002, monster_id = 25210401, pos = { x = -2236.060, y = 142.937, z = 5070.318 }, rot = { x = 0.000, y = 212.160, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 349003, monster_id = 25210501, pos = { x = -2242.330, y = 142.579, z = 5073.497 }, rot = { x = 0.000, y = 161.510, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 349004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2238.916, y = 142.974, z = 5074.018 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1349004, name = "ENTER_REGION_349004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_349004", action = "action_EVENT_ENTER_REGION_349004" }
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
		regions = { 349004 },
		triggers = { "ENTER_REGION_349004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 349001, 349002, 349003 },
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
function condition_EVENT_ENTER_REGION_349004(context, evt)
	if evt.param1 ~= 349004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_349004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310349, 2)
	
	return 0
end