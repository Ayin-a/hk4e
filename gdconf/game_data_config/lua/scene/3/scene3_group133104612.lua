-- 基础信息
local base_info = {
	group_id = 133104612
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 612001, monster_id = 20010601, pos = { x = 360.514, y = 256.759, z = 720.653 }, rot = { x = 32.971, y = 144.970, z = 20.283 }, level = 19, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 612002, monster_id = 20010701, pos = { x = 361.975, y = 256.363, z = 722.907 }, rot = { x = 35.170, y = 136.812, z = 15.707 }, level = 19, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 612003, monster_id = 20010601, pos = { x = 360.635, y = 255.560, z = 726.165 }, rot = { x = 28.681, y = 135.982, z = 16.602 }, level = 19, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 612004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 358.491, y = 254.921, z = 725.674 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1612004, name = "ENTER_REGION_612004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_612004", action = "action_EVENT_ENTER_REGION_612004" }
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
		regions = { 612004 },
		triggers = { "ENTER_REGION_612004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 612001, 612002, 612003 },
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
function condition_EVENT_ENTER_REGION_612004(context, evt)
	if evt.param1 ~= 612004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_612004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104612, 2)
	
	return 0
end