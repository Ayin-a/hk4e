-- 基础信息
local base_info = {
	group_id = 133302041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41002, monster_id = 26090401, pos = { x = -78.923, y = 266.726, z = 2504.134 }, rot = { x = 0.000, y = 75.321, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 41003, monster_id = 26090401, pos = { x = -76.072, y = 266.726, z = 2507.204 }, rot = { x = 0.000, y = 75.321, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 41004, monster_id = 28060201, pos = { x = -74.418, y = 266.950, z = 2502.987 }, rot = { x = 0.000, y = 323.261, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 41001, shape = RegionShape.SPHERE, radius = 10, pos = { x = -75.395, y = 266.966, z = 2505.579 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1041001, name = "ENTER_REGION_41001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41001", action = "action_EVENT_ENTER_REGION_41001" }
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
		regions = { 41001 },
		triggers = { "ENTER_REGION_41001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 41002, 41003, 41004 },
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
function condition_EVENT_ENTER_REGION_41001(context, evt)
	if evt.param1 ~= 41001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302041, 2)
	
	return 0
end