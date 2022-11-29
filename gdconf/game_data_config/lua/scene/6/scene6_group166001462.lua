-- 基础信息
local base_info = {
	group_id = 166001462
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 462002, monster_id = 26010201, pos = { x = 503.007, y = 389.949, z = 490.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 462004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 503.035, y = 389.506, z = 490.792 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1462004, name = "ENTER_REGION_462004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462004", action = "action_EVENT_ENTER_REGION_462004" }
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
		regions = { 462004 },
		triggers = { "ENTER_REGION_462004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 462002 },
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
function condition_EVENT_ENTER_REGION_462004(context, evt)
	if evt.param1 ~= 462004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_462004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001462, 2)
	
	return 0
end