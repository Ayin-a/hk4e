-- 基础信息
local base_info = {
	group_id = 133002368
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 368001, monster_id = 20010801, pos = { x = 1711.252, y = 200.600, z = -225.044 }, rot = { x = 356.380, y = 124.999, z = 16.296 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 368002, monster_id = 20010801, pos = { x = 1712.863, y = 200.302, z = -226.865 }, rot = { x = 0.000, y = 123.931, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 368003, monster_id = 20010801, pos = { x = 1709.227, y = 201.031, z = -226.442 }, rot = { x = 0.000, y = 90.286, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 368005, monster_id = 20010801, pos = { x = 1710.811, y = 200.547, z = -228.266 }, rot = { x = 0.000, y = 105.801, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 368004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1711.501, y = 200.585, z = -226.063 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1368004, name = "ENTER_REGION_368004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_368004", action = "action_EVENT_ENTER_REGION_368004" }
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
		regions = { 368004 },
		triggers = { "ENTER_REGION_368004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 368001, 368002, 368003, 368005 },
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
function condition_EVENT_ENTER_REGION_368004(context, evt)
	if evt.param1 ~= 368004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_368004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002368, 2)
	
	return 0
end