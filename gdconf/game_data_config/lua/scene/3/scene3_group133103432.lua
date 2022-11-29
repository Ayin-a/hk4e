-- 基础信息
local base_info = {
	group_id = 133103432
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 432001, monster_id = 26010201, pos = { x = 296.532, y = 296.372, z = 1794.392 }, rot = { x = 0.000, y = 204.034, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 6 },
	{ config_id = 432002, monster_id = 26010201, pos = { x = 295.812, y = 297.012, z = 1800.422 }, rot = { x = 0.000, y = 204.034, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 432004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 296.979, y = 296.458, z = 1799.000 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1432004, name = "ENTER_REGION_432004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_432004", action = "action_EVENT_ENTER_REGION_432004" }
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
		regions = { 432004 },
		triggers = { "ENTER_REGION_432004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 432001, 432002 },
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
function condition_EVENT_ENTER_REGION_432004(context, evt)
	if evt.param1 ~= 432004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_432004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103432, 2)
	
	return 0
end