-- 基础信息
local base_info = {
	group_id = 133106509
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 509001, monster_id = 20011501, pos = { x = -519.825, y = 142.834, z = 1812.189 }, rot = { x = 0.000, y = 180.830, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 },
	{ config_id = 509002, monster_id = 20011401, pos = { x = -524.163, y = 142.912, z = 1810.832 }, rot = { x = 0.000, y = 50.555, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 509004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -520.785, y = 136.825, z = 1808.317 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1509004, name = "ENTER_REGION_509004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_509004", action = "action_EVENT_ENTER_REGION_509004" }
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
		regions = { 509004 },
		triggers = { "ENTER_REGION_509004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 509001, 509002 },
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
function condition_EVENT_ENTER_REGION_509004(context, evt)
	if evt.param1 ~= 509004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_509004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106509, 2)
	
	return 0
end