-- 基础信息
local base_info = {
	group_id = 133104663
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 663002, monster_id = 26010101, pos = { x = 437.020, y = 180.631, z = 861.897 }, rot = { x = 0.000, y = 341.712, z = 0.000 }, level = 19, drop_tag = "骗骗花", disableWander = true, area_id = 6 },
	{ config_id = 663005, monster_id = 26010101, pos = { x = 433.118, y = 180.500, z = 852.406 }, rot = { x = 0.000, y = 115.678, z = 0.000 }, level = 19, drop_tag = "骗骗花", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 663004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 441.275, y = 180.500, z = 856.480 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1663004, name = "ENTER_REGION_663004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_663004", action = "action_EVENT_ENTER_REGION_663004" }
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
		regions = { 663004 },
		triggers = { "ENTER_REGION_663004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 663002, 663005 },
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
function condition_EVENT_ENTER_REGION_663004(context, evt)
	if evt.param1 ~= 663004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_663004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104663, 2)
	
	return 0
end