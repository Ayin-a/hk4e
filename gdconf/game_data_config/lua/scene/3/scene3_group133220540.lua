-- 基础信息
local base_info = {
	group_id = 133220540
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 540001, monster_id = 20010501, pos = { x = -2813.485, y = 176.107, z = -4070.082 }, rot = { x = 0.000, y = 140.674, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 540002, monster_id = 20010501, pos = { x = -2815.220, y = 176.397, z = -4071.427 }, rot = { x = 0.000, y = 123.326, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 540003, monster_id = 20010501, pos = { x = -2813.647, y = 176.039, z = -4066.627 }, rot = { x = 0.000, y = 105.961, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 540004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2812.577, y = 176.240, z = -4071.215 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1540004, name = "ENTER_REGION_540004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_540004", action = "action_EVENT_ENTER_REGION_540004" }
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
		regions = { 540004 },
		triggers = { "ENTER_REGION_540004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 540001, 540002, 540003 },
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
function condition_EVENT_ENTER_REGION_540004(context, evt)
	if evt.param1 ~= 540004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_540004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220540, 2)
	
	return 0
end