-- 基础信息
local base_info = {
	group_id = 166001507
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 507001, monster_id = 20010801, pos = { x = 398.275, y = 180.300, z = 740.555 }, rot = { x = 0.000, y = 329.650, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 507003, monster_id = 20010801, pos = { x = 392.630, y = 180.300, z = 741.203 }, rot = { x = 0.000, y = 96.705, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 507004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 393.857, y = 180.300, z = 740.470 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1507004, name = "ENTER_REGION_507004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_507004", action = "action_EVENT_ENTER_REGION_507004" }
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
		regions = { 507004 },
		triggers = { "ENTER_REGION_507004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 507001, 507003 },
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
function condition_EVENT_ENTER_REGION_507004(context, evt)
	if evt.param1 ~= 507004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_507004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001507, 2)
	
	return 0
end