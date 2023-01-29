-- 基础信息
local base_info = {
	group_id = 133313199
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 199001, monster_id = 26090201, pos = { x = -821.990, y = -268.110, z = 5753.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 199003, monster_id = 26090201, pos = { x = -825.944, y = -266.809, z = 5760.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 199004, monster_id = 26090201, pos = { x = -820.226, y = -266.757, z = 5757.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 199005, monster_id = 26090201, pos = { x = -825.086, y = -267.630, z = 5756.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 32 },
	{ config_id = 199006, monster_id = 28060401, pos = { x = -838.848, y = -266.607, z = 5723.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 199002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -826.866, y = -268.070, z = 5755.770 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1199002, name = "ENTER_REGION_199002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_199002", action = "action_EVENT_ENTER_REGION_199002" }
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
		monsters = { 199005, 199006 },
		gadgets = { },
		regions = { 199002 },
		triggers = { "ENTER_REGION_199002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 199001, 199003, 199004 },
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
function condition_EVENT_ENTER_REGION_199002(context, evt)
	if evt.param1 ~= 199002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_199002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313199, 2)
	
	return 0
end