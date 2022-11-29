-- 基础信息
local base_info = {
	group_id = 166001579
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 579001, monster_id = 22010401, pos = { x = 1193.298, y = 743.771, z = 362.142 }, rot = { x = 0.000, y = 245.950, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 300 },
	{ config_id = 579002, monster_id = 22010201, pos = { x = 1193.863, y = 743.835, z = 359.728 }, rot = { x = 0.000, y = 237.248, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 579004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1192.966, y = 743.475, z = 361.329 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1579004, name = "ENTER_REGION_579004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_579004", action = "action_EVENT_ENTER_REGION_579004" }
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
		regions = { 579004 },
		triggers = { "ENTER_REGION_579004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 579001, 579002 },
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
function condition_EVENT_ENTER_REGION_579004(context, evt)
	if evt.param1 ~= 579004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_579004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001579, 2)
	
	return 0
end