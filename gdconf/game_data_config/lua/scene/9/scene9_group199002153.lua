-- 基础信息
local base_info = {
	group_id = 199002153
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 153001, monster_id = 20011001, pos = { x = 490.770, y = 120.000, z = -28.518 }, rot = { x = 0.000, y = 171.122, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 402 },
	{ config_id = 153002, monster_id = 20011001, pos = { x = 489.111, y = 120.000, z = -27.538 }, rot = { x = 0.000, y = 171.122, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 402 },
	{ config_id = 153003, monster_id = 20011001, pos = { x = 492.060, y = 120.000, z = -27.170 }, rot = { x = 0.000, y = 171.122, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 153004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 490.636, y = 120.000, z = -28.158 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1153004, name = "ENTER_REGION_153004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153004", action = "action_EVENT_ENTER_REGION_153004" }
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
		regions = { 153004 },
		triggers = { "ENTER_REGION_153004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 153001, 153002, 153003 },
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
function condition_EVENT_ENTER_REGION_153004(context, evt)
	if evt.param1 ~= 153004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002153, 2)
	
	return 0
end