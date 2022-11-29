-- 基础信息
local base_info = {
	group_id = 133223377
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 377001, monster_id = 22040201, pos = { x = -5914.847, y = 170.999, z = -2608.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 377002, monster_id = 22040201, pos = { x = -5912.244, y = 172.657, z = -2600.383 }, rot = { x = 0.000, y = 277.210, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 377004, shape = RegionShape.SPHERE, radius = 6, pos = { x = -5920.212, y = 175.494, z = -2597.105 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1377004, name = "ENTER_REGION_377004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377004", action = "action_EVENT_ENTER_REGION_377004" }
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
		regions = { 377004 },
		triggers = { "ENTER_REGION_377004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 377001, 377002 },
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
function condition_EVENT_ENTER_REGION_377004(context, evt)
	if evt.param1 ~= 377004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223377, 2)
	
	return 0
end