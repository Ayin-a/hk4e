-- 基础信息
local base_info = {
	group_id = 133102016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 21010901, pos = { x = 990.947, y = 257.606, z = 977.441 }, rot = { x = 0.000, y = 339.896, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 6 },
	{ config_id = 16002, monster_id = 21010501, pos = { x = 1017.347, y = 259.252, z = 978.484 }, rot = { x = 0.000, y = 281.572, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 16003, monster_id = 21011001, pos = { x = 1013.342, y = 256.346, z = 950.089 }, rot = { x = 0.000, y = 350.815, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 16004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 988.213, y = 259.889, z = 996.183 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1016004, name = "ENTER_REGION_16004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16004", action = "action_EVENT_ENTER_REGION_16004" }
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
		regions = { 16004 },
		triggers = { "ENTER_REGION_16004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 16001, 16002, 16003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_16004(context, evt)
	if evt.param1 ~= 16004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102016, 2)
	
	return 0
end