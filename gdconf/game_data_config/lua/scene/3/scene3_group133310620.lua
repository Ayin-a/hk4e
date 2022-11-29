-- 基础信息
local base_info = {
	group_id = 133310620
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 620001, monster_id = 20011401, pos = { x = -2633.892, y = 155.935, z = 4912.823 }, rot = { x = 0.000, y = 346.380, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 },
	{ config_id = 620002, monster_id = 20011401, pos = { x = -2632.884, y = 155.417, z = 4911.579 }, rot = { x = 0.000, y = 349.653, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 },
	{ config_id = 620003, monster_id = 20011401, pos = { x = -2634.930, y = 156.469, z = 4911.707 }, rot = { x = 0.000, y = 358.183, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 620004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2633.851, y = 155.990, z = 4911.624 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1620004, name = "ENTER_REGION_620004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_620004", action = "action_EVENT_ENTER_REGION_620004" }
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
		regions = { 620004 },
		triggers = { "ENTER_REGION_620004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 620001, 620002, 620003 },
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
function condition_EVENT_ENTER_REGION_620004(context, evt)
	if evt.param1 ~= 620004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_620004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310620, 2)
	
	return 0
end