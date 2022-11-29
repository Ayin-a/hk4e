-- 基础信息
local base_info = {
	group_id = 133210415
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 415001, monster_id = 25080201, pos = { x = -3610.377, y = 123.952, z = -700.413 }, rot = { x = 0.000, y = 239.887, z = 0.000 }, level = 32, drop_tag = "浪人武士", pose_id = 1, area_id = 17 },
	{ config_id = 415002, monster_id = 25080201, pos = { x = -3606.612, y = 121.815, z = -714.291 }, rot = { x = 0.000, y = 299.043, z = 0.000 }, level = 32, drop_tag = "浪人武士", pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 415003, gadget_id = 70220048, pos = { x = -3605.002, y = 124.534, z = -704.226 }, rot = { x = 9.749, y = 157.489, z = 338.130 }, level = 30, area_id = 17 },
	{ config_id = 415005, gadget_id = 70220048, pos = { x = -3606.015, y = 122.803, z = -708.734 }, rot = { x = 346.805, y = 10.224, z = 13.338 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 415004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3611.930, y = 121.000, z = -706.633 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1415004, name = "ENTER_REGION_415004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_415004", action = "action_EVENT_ENTER_REGION_415004" }
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
		gadgets = { 415003, 415005 },
		regions = { 415004 },
		triggers = { "ENTER_REGION_415004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 415001, 415002 },
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
function condition_EVENT_ENTER_REGION_415004(context, evt)
	if evt.param1 ~= 415004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_415004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210415, 2)
	
	return 0
end