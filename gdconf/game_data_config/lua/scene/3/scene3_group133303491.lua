-- 基础信息
local base_info = {
	group_id = 133303491
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 491001, monster_id = 26090401, pos = { x = -1818.979, y = -7.576, z = 3250.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 491002, monster_id = 26090401, pos = { x = -1813.674, y = -8.111, z = 3246.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 491003, gadget_id = 70900388, pos = { x = -1811.789, y = -8.066, z = 3239.106 }, rot = { x = 0.327, y = 199.170, z = 4.698 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 491004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1815.604, y = -8.112, z = 3246.488 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1491004, name = "ENTER_REGION_491004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_491004", action = "action_EVENT_ENTER_REGION_491004" }
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
		gadgets = { 491003 },
		regions = { 491004 },
		triggers = { "ENTER_REGION_491004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 491001, 491002 },
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
function condition_EVENT_ENTER_REGION_491004(context, evt)
	if evt.param1 ~= 491004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_491004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303491, 2)
	
	return 0
end