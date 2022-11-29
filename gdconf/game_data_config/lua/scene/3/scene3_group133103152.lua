-- 基础信息
local base_info = {
	group_id = 133103152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 20011401, pos = { x = 990.607, y = 270.626, z = 1521.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 152002, monster_id = 20011401, pos = { x = 992.653, y = 270.234, z = 1521.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 152003, monster_id = 20011501, pos = { x = 991.568, y = 269.859, z = 1522.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 152008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 991.120, y = 270.647, z = 1521.799 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1152008, name = "ENTER_REGION_152008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152008", action = "action_EVENT_ENTER_REGION_152008" }
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
		regions = { 152008 },
		triggers = { "ENTER_REGION_152008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 152001, 152002, 152003 },
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
function condition_EVENT_ENTER_REGION_152008(context, evt)
	if evt.param1 ~= 152008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103152, 2)
	
	return 0
end