-- 基础信息
local base_info = {
	group_id = 133308666
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 666001, monster_id = 24040101, pos = { x = -1402.794, y = -34.704, z = 4440.711 }, rot = { x = 0.000, y = 300.123, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 666002, monster_id = 24040101, pos = { x = -1519.916, y = -53.300, z = 4508.427 }, rot = { x = 0.000, y = 148.519, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 666003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1408.230, y = -37.486, z = 4441.315 }, area_id = 26 },
	{ config_id = 666004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1524.076, y = -52.147, z = 4508.101 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1666003, name = "ENTER_REGION_666003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_666003", action = "action_EVENT_ENTER_REGION_666003" },
	{ config_id = 1666004, name = "ENTER_REGION_666004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_666004", action = "action_EVENT_ENTER_REGION_666004" }
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
		regions = { 666003, 666004 },
		triggers = { "ENTER_REGION_666003", "ENTER_REGION_666004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 666001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 666002 },
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
function condition_EVENT_ENTER_REGION_666003(context, evt)
	if evt.param1 ~= 666003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_666003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308666, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_666004(context, evt)
	if evt.param1 ~= 666004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_666004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308666, 3)
	
	return 0
end