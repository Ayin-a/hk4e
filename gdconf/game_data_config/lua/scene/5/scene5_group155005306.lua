-- 基础信息
local base_info = {
	group_id = 155005306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306001, monster_id = 22040201, pos = { x = 238.669, y = 325.557, z = 214.647 }, rot = { x = 0.000, y = 201.363, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 306002, monster_id = 22040201, pos = { x = 245.955, y = 325.557, z = 211.662 }, rot = { x = 0.000, y = 299.850, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 306003, monster_id = 22040201, pos = { x = 234.874, y = 325.557, z = 208.525 }, rot = { x = 0.000, y = 25.729, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 306004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 239.481, y = 325.557, z = 210.591 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1306004, name = "ENTER_REGION_306004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306004", action = "action_EVENT_ENTER_REGION_306004" }
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
		regions = { 306004 },
		triggers = { "ENTER_REGION_306004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 306001, 306002, 306003 },
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
function condition_EVENT_ENTER_REGION_306004(context, evt)
	if evt.param1 ~= 306004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_306004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005306, 2)
	
	return 0
end