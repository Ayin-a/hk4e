-- 基础信息
local base_info = {
	group_id = 133103065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65002, monster_id = 26030101, pos = { x = 1104.274, y = 230.906, z = 1645.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "幼岩龙蜥", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 65001, shape = RegionShape.SPHERE, radius = 12, pos = { x = 1109.457, y = 231.028, z = 1642.326 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1065001, name = "ENTER_REGION_65001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65001", action = "action_EVENT_ENTER_REGION_65001" }
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
		regions = { 65001 },
		triggers = { "ENTER_REGION_65001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 65002 },
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
function condition_EVENT_ENTER_REGION_65001(context, evt)
	if evt.param1 ~= 65001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103065, 2)
	
	return 0
end