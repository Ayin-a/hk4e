-- 基础信息
local base_info = {
	group_id = 133309753
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 753001, monster_id = 28060401, pos = { x = -2726.475, y = 36.557, z = 5753.761 }, rot = { x = 0.000, y = 0.349, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 753002, monster_id = 28060401, pos = { x = -2722.335, y = 35.195, z = 5756.576 }, rot = { x = 0.000, y = 322.330, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 753003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2729.700, y = 38.756, z = 5763.152 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1753003, name = "ENTER_REGION_753003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_753003", action = "action_EVENT_ENTER_REGION_753003" }
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
		regions = { 753003 },
		triggers = { "ENTER_REGION_753003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 753001, 753002 },
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
function condition_EVENT_ENTER_REGION_753003(context, evt)
	if evt.param1 ~= 753003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_753003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309753, 2)
	
	return 0
end