-- 基础信息
local base_info = {
	group_id = 133301651
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 651001, monster_id = 26090801, pos = { x = -848.333, y = 345.732, z = 3249.124 }, rot = { x = 0.000, y = 136.360, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 651002, monster_id = 26090801, pos = { x = -846.307, y = 348.110, z = 3243.794 }, rot = { x = 0.000, y = 39.111, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 651004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -845.595, y = 347.165, z = 3245.315 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1651004, name = "ENTER_REGION_651004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_651004", action = "action_EVENT_ENTER_REGION_651004" }
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
		regions = { 651004 },
		triggers = { "ENTER_REGION_651004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 651001, 651002 },
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
function condition_EVENT_ENTER_REGION_651004(context, evt)
	if evt.param1 ~= 651004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_651004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301651, 2)
	
	return 0
end