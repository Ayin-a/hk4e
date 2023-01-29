-- 基础信息
local base_info = {
	group_id = 133314060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 28061501, pos = { x = -109.233, y = 263.014, z = 4315.225 }, rot = { x = 0.000, y = 338.427, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 2, area_id = 32 },
	{ config_id = 60005, monster_id = 28060501, pos = { x = -124.558, y = 257.459, z = 4330.752 }, rot = { x = 0.000, y = 59.717, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 32 },
	{ config_id = 60006, monster_id = 28060501, pos = { x = -119.911, y = 257.348, z = 4338.059 }, rot = { x = 0.000, y = 212.907, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 32 },
	{ config_id = 60007, monster_id = 28060401, pos = { x = -113.912, y = 260.070, z = 4324.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 60002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -115.608, y = 257.570, z = 4320.381 }, area_id = 32 },
	{ config_id = 60004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -108.952, y = 257.438, z = 4315.960 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1060002, name = "ENTER_REGION_60002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60002", action = "action_EVENT_ENTER_REGION_60002" },
	{ config_id = 1060004, name = "ENTER_REGION_60004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60004", action = "action_EVENT_ENTER_REGION_60004" }
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
		monsters = { 60005, 60006 },
		gadgets = { },
		regions = { 60002, 60004 },
		triggers = { "ENTER_REGION_60002", "ENTER_REGION_60004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 60007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 60001 },
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
function condition_EVENT_ENTER_REGION_60002(context, evt)
	if evt.param1 ~= 60002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314060, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_60004(context, evt)
	if evt.param1 ~= 60004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314060, 2)
	
	return 0
end