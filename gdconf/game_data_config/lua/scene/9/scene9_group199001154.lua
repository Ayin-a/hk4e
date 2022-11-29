-- 基础信息
local base_info = {
	group_id = 199001154
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 154001, monster_id = 20011001, pos = { x = -275.049, y = 120.000, z = 492.963 }, rot = { x = 0.000, y = 61.984, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 403 },
	{ config_id = 154002, monster_id = 20011001, pos = { x = -273.517, y = 120.007, z = 486.911 }, rot = { x = 0.000, y = 61.984, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 403 },
	{ config_id = 154003, monster_id = 20011001, pos = { x = -275.412, y = 120.307, z = 487.492 }, rot = { x = 0.000, y = 61.984, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 403 },
	{ config_id = 154006, monster_id = 20011101, pos = { x = -275.990, y = 119.985, z = 489.729 }, rot = { x = 0.000, y = 53.369, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 154004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -276.076, y = 120.466, z = 486.404 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1154004, name = "ENTER_REGION_154004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154004", action = "action_EVENT_ENTER_REGION_154004" }
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
		regions = { 154004 },
		triggers = { "ENTER_REGION_154004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 154001, 154002, 154003, 154006 },
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
function condition_EVENT_ENTER_REGION_154004(context, evt)
	if evt.param1 ~= 154004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001154, 2)
	
	return 0
end