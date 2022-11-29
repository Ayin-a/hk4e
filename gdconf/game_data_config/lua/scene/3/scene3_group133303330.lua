-- 基础信息
local base_info = {
	group_id = 133303330
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 330001, monster_id = 26090101, pos = { x = -1752.350, y = 205.278, z = 3554.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 330002, monster_id = 26090101, pos = { x = -1749.619, y = 205.239, z = 3553.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 330003, monster_id = 28010303, pos = { x = -1748.842, y = 205.427, z = 3555.357 }, rot = { x = 0.000, y = 318.277, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 330004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1750.279, y = 205.282, z = 3553.837 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1330004, name = "ENTER_REGION_330004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_330004", action = "action_EVENT_ENTER_REGION_330004" }
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
		monsters = { 330003 },
		gadgets = { },
		regions = { 330004 },
		triggers = { "ENTER_REGION_330004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 330001, 330002 },
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
function condition_EVENT_ENTER_REGION_330004(context, evt)
	if evt.param1 ~= 330004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_330004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303330, 2)
	
	return 0
end