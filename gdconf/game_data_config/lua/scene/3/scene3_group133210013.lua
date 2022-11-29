-- 基础信息
local base_info = {
	group_id = 133210013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 20060101, pos = { x = -4084.330, y = 204.938, z = -1137.891 }, rot = { x = 0.000, y = 220.159, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 13002, monster_id = 20060301, pos = { x = -4084.511, y = 206.586, z = -1142.979 }, rot = { x = 0.000, y = 332.093, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 13003, monster_id = 20060201, pos = { x = -4089.934, y = 204.595, z = -1142.260 }, rot = { x = 0.000, y = 72.799, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 13004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4087.067, y = 202.163, z = -1142.236 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1013004, name = "ENTER_REGION_13004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13004", action = "action_EVENT_ENTER_REGION_13004" }
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
		regions = { 13004 },
		triggers = { "ENTER_REGION_13004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 13001, 13002, 13003 },
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
function condition_EVENT_ENTER_REGION_13004(context, evt)
	if evt.param1 ~= 13004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210013, 2)
	
	return 0
end