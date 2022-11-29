-- 基础信息
local base_info = {
	group_id = 133301717
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 717001, monster_id = 26090801, pos = { x = -857.133, y = 112.794, z = 3186.339 }, rot = { x = 0.000, y = 264.461, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 717002, monster_id = 26090801, pos = { x = -866.085, y = 111.635, z = 3186.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 717003, monster_id = 26090801, pos = { x = -856.066, y = 112.284, z = 3182.644 }, rot = { x = 0.000, y = 304.173, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 717004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -858.877, y = 111.949, z = 3184.713 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1717004, name = "ENTER_REGION_717004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_717004", action = "action_EVENT_ENTER_REGION_717004" }
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
		regions = { 717004 },
		triggers = { "ENTER_REGION_717004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 717001, 717002, 717003 },
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
function condition_EVENT_ENTER_REGION_717004(context, evt)
	if evt.param1 ~= 717004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_717004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301717, 2)
	
	return 0
end