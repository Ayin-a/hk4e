-- 基础信息
local base_info = {
	group_id = 133106535
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 535001, monster_id = 20011401, pos = { x = -837.944, y = 193.864, z = 1852.440 }, rot = { x = 0.000, y = 63.728, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 535002, monster_id = 20011401, pos = { x = -838.385, y = 193.864, z = 1850.564 }, rot = { x = 0.000, y = 63.728, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 535003, monster_id = 20011401, pos = { x = -839.616, y = 193.864, z = 1853.268 }, rot = { x = 0.000, y = 63.728, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 535004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -838.660, y = 186.183, z = 1851.675 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1535004, name = "ENTER_REGION_535004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_535004", action = "action_EVENT_ENTER_REGION_535004" }
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
		regions = { 535004 },
		triggers = { "ENTER_REGION_535004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 535001, 535002, 535003 },
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
function condition_EVENT_ENTER_REGION_535004(context, evt)
	if evt.param1 ~= 535004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_535004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106535, 2)
	
	return 0
end