-- 基础信息
local base_info = {
	group_id = 133210041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41001, monster_id = 20060101, pos = { x = -4004.441, y = 200.000, z = -1158.215 }, rot = { x = 0.000, y = 212.042, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 41002, monster_id = 20060101, pos = { x = -4000.051, y = 200.000, z = -1164.668 }, rot = { x = 0.000, y = 262.745, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 41003, monster_id = 20060301, pos = { x = -4007.183, y = 200.000, z = -1164.876 }, rot = { x = 0.000, y = 53.698, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 41004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4004.618, y = 200.000, z = -1163.359 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1041004, name = "ENTER_REGION_41004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41004", action = "action_EVENT_ENTER_REGION_41004" }
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
		regions = { 41004 },
		triggers = { "ENTER_REGION_41004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 41001, 41002, 41003 },
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
function condition_EVENT_ENTER_REGION_41004(context, evt)
	if evt.param1 ~= 41004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210041, 2)
	
	return 0
end