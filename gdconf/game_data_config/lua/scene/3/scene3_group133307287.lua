-- 基础信息
local base_info = {
	group_id = 133307287
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 287002, monster_id = 28061501, pos = { x = -1408.937, y = -29.929, z = 5544.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 },
	{ config_id = 287003, monster_id = 28061501, pos = { x = -1404.448, y = -29.956, z = 5553.103 }, rot = { x = 0.000, y = 282.185, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 287001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1406.220, y = -29.451, z = 5548.299 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1287001, name = "ENTER_REGION_287001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287001", action = "action_EVENT_ENTER_REGION_287001" }
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
		regions = { 287001 },
		triggers = { "ENTER_REGION_287001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 287002, 287003 },
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
function condition_EVENT_ENTER_REGION_287001(context, evt)
	if evt.param1 ~= 287001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307287, 2)
	
	return 0
end