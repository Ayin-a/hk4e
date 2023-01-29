-- 基础信息
local base_info = {
	group_id = 133307377
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 377002, monster_id = 26090901, pos = { x = -1688.402, y = 9.802, z = 5571.129 }, rot = { x = 0.000, y = 120.549, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 377003, monster_id = 26090901, pos = { x = -1680.548, y = 10.022, z = 5572.607 }, rot = { x = 0.000, y = 229.520, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 377004, monster_id = 26090901, pos = { x = -1684.151, y = 9.802, z = 5577.125 }, rot = { x = 0.000, y = 71.541, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 377001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1685.826, y = 9.802, z = 5569.613 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1377001, name = "ENTER_REGION_377001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377001", action = "action_EVENT_ENTER_REGION_377001" }
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
		regions = { 377001 },
		triggers = { "ENTER_REGION_377001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 377002, 377003, 377004 },
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
function condition_EVENT_ENTER_REGION_377001(context, evt)
	if evt.param1 ~= 377001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307377, 2)
	
	return 0
end