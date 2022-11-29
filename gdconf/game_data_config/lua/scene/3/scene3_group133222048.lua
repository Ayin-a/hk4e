-- 基础信息
local base_info = {
	group_id = 133222048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 20060301, pos = { x = -4348.144, y = 199.994, z = -4270.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 48002, monster_id = 20060301, pos = { x = -4352.677, y = 199.994, z = -4262.065 }, rot = { x = 0.000, y = 121.113, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 48003, monster_id = 20060301, pos = { x = -4344.175, y = 199.994, z = -4263.109 }, rot = { x = 0.000, y = 221.576, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 48004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4350.201, y = 200.317, z = -4266.707 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1048004, name = "ENTER_REGION_48004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48004", action = "action_EVENT_ENTER_REGION_48004" }
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
		regions = { 48004 },
		triggers = { "ENTER_REGION_48004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 48001, 48002, 48003 },
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
function condition_EVENT_ENTER_REGION_48004(context, evt)
	if evt.param1 ~= 48004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222048, 2)
	
	return 0
end