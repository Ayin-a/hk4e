-- 基础信息
local base_info = {
	group_id = 133302275
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 275001, monster_id = 20011401, pos = { x = -184.893, y = 199.116, z = 2429.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 275002, monster_id = 20011201, pos = { x = -183.406, y = 199.116, z = 2428.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 275003, monster_id = 20011201, pos = { x = -186.376, y = 199.116, z = 2428.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 275004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -184.903, y = 199.116, z = 2428.499 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1275004, name = "ENTER_REGION_275004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_275004", action = "action_EVENT_ENTER_REGION_275004" }
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
		regions = { 275004 },
		triggers = { "ENTER_REGION_275004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 275001, 275002, 275003 },
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
function condition_EVENT_ENTER_REGION_275004(context, evt)
	if evt.param1 ~= 275004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302275, 2)
	
	return 0
end