-- 基础信息
local base_info = {
	group_id = 144004043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 20010501, pos = { x = 116.756, y = 121.362, z = -775.471 }, rot = { x = 0.000, y = 144.379, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 101 },
	{ config_id = 43002, monster_id = 20010501, pos = { x = 114.953, y = 122.119, z = -776.461 }, rot = { x = 0.000, y = 64.689, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 101 },
	{ config_id = 43003, monster_id = 20010501, pos = { x = 114.604, y = 121.797, z = -773.892 }, rot = { x = 0.000, y = 120.107, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 43004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 115.776, y = 122.082, z = -774.506 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1043004, name = "ENTER_REGION_43004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43004", action = "action_EVENT_ENTER_REGION_43004" }
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
		regions = { 43004 },
		triggers = { "ENTER_REGION_43004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 43001, 43002, 43003 },
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
function condition_EVENT_ENTER_REGION_43004(context, evt)
	if evt.param1 ~= 43004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004043, 2)
	
	return 0
end