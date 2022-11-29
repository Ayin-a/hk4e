-- 基础信息
local base_info = {
	group_id = 133212492
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 492001, monster_id = 20011001, pos = { x = -3822.574, y = 238.809, z = -2374.475 }, rot = { x = 0.000, y = 157.837, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 492002, monster_id = 20011001, pos = { x = -3824.335, y = 239.166, z = -2376.540 }, rot = { x = 0.000, y = 111.710, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 492003, monster_id = 20011001, pos = { x = -3820.070, y = 238.809, z = -2374.125 }, rot = { x = 0.000, y = 193.439, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 492004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3821.820, y = 238.809, z = -2375.741 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1492004, name = "ENTER_REGION_492004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_492004", action = "action_EVENT_ENTER_REGION_492004" }
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
		regions = { 492004 },
		triggers = { "ENTER_REGION_492004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 492001, 492002, 492003 },
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
function condition_EVENT_ENTER_REGION_492004(context, evt)
	if evt.param1 ~= 492004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_492004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212492, 2)
	
	return 0
end