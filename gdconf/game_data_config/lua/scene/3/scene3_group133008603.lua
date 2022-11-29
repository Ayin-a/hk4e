-- 基础信息
local base_info = {
	group_id = 133008603
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 603001, monster_id = 20010801, pos = { x = 1008.875, y = 487.802, z = -822.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 603002, monster_id = 20010801, pos = { x = 1010.342, y = 488.231, z = -823.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 603003, monster_id = 20010801, pos = { x = 1007.233, y = 488.821, z = -823.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 603004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1008.845, y = 488.231, z = -823.246 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1603004, name = "ENTER_REGION_603004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_603004", action = "action_EVENT_ENTER_REGION_603004" }
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
		regions = { 603004 },
		triggers = { "ENTER_REGION_603004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 603001, 603002, 603003 },
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
function condition_EVENT_ENTER_REGION_603004(context, evt)
	if evt.param1 ~= 603004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_603004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008603, 2)
	
	return 0
end