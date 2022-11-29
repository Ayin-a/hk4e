-- 基础信息
local base_info = {
	group_id = 133210465
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 465001, monster_id = 20011001, pos = { x = -3554.551, y = 187.505, z = -1177.487 }, rot = { x = 0.000, y = 113.784, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 },
	{ config_id = 465002, monster_id = 20011001, pos = { x = -3545.426, y = 187.468, z = -1184.996 }, rot = { x = 0.000, y = 333.475, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 },
	{ config_id = 465003, monster_id = 20011001, pos = { x = -3547.893, y = 187.469, z = -1176.231 }, rot = { x = 0.000, y = 202.498, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 465004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3548.748, y = 187.469, z = -1180.128 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1465004, name = "ENTER_REGION_465004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_465004", action = "action_EVENT_ENTER_REGION_465004" }
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
		regions = { 465004 },
		triggers = { "ENTER_REGION_465004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 465001, 465002, 465003 },
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
function condition_EVENT_ENTER_REGION_465004(context, evt)
	if evt.param1 ~= 465004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_465004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210465, 2)
	
	return 0
end