-- 基础信息
local base_info = {
	group_id = 133310220
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 220001, monster_id = 26090801, pos = { x = -2763.700, y = 285.268, z = 4223.191 }, rot = { x = 0.000, y = 76.356, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 220002, monster_id = 26090301, pos = { x = -2765.329, y = 286.114, z = 4220.076 }, rot = { x = 0.000, y = 55.400, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 220003, monster_id = 26090301, pos = { x = -2767.998, y = 285.439, z = 4224.999 }, rot = { x = 0.000, y = 89.905, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 220004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2763.739, y = 285.301, z = 4223.127 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1220004, name = "ENTER_REGION_220004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_220004", action = "action_EVENT_ENTER_REGION_220004" }
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
		regions = { 220004 },
		triggers = { "ENTER_REGION_220004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 220001, 220002, 220003 },
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
function condition_EVENT_ENTER_REGION_220004(context, evt)
	if evt.param1 ~= 220004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_220004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310220, 2)
	
	return 0
end