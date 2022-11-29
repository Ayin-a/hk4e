-- 基础信息
local base_info = {
	group_id = 133310301
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 301001, monster_id = 20011201, pos = { x = -2686.037, y = 198.774, z = 4624.027 }, rot = { x = 0.000, y = 14.013, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 28 },
	{ config_id = 301002, monster_id = 20011201, pos = { x = -2681.571, y = 199.246, z = 4626.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 28 },
	{ config_id = 301003, monster_id = 20011201, pos = { x = -2687.062, y = 200.385, z = 4628.743 }, rot = { x = 0.000, y = 93.636, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 301004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2684.402, y = 199.620, z = 4626.863 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1301004, name = "ENTER_REGION_301004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301004", action = "action_EVENT_ENTER_REGION_301004" }
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
		regions = { 301004 },
		triggers = { "ENTER_REGION_301004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 301001, 301002, 301003 },
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
function condition_EVENT_ENTER_REGION_301004(context, evt)
	if evt.param1 ~= 301004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310301, 2)
	
	return 0
end