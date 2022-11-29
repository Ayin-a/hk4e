-- 基础信息
local base_info = {
	group_id = 133002419
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 419001, monster_id = 21010901, pos = { x = 1913.436, y = 211.151, z = -176.145 }, rot = { x = 0.000, y = 264.627, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 4 },
	{ config_id = 419002, monster_id = 21010501, pos = { x = 1914.245, y = 217.839, z = -169.037 }, rot = { x = 0.000, y = 240.499, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 419003, monster_id = 21011001, pos = { x = 1891.197, y = 205.207, z = -173.250 }, rot = { x = 0.000, y = 193.262, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 419004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1893.281, y = 204.707, z = -177.606 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1419004, name = "ENTER_REGION_419004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_419004", action = "action_EVENT_ENTER_REGION_419004" }
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
		regions = { 419004 },
		triggers = { "ENTER_REGION_419004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 419001, 419002, 419003 },
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
function condition_EVENT_ENTER_REGION_419004(context, evt)
	if evt.param1 ~= 419004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_419004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002419, 2)
	
	return 0
end