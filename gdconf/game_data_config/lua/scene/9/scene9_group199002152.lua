-- 基础信息
local base_info = {
	group_id = 199002152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 22010201, pos = { x = -32.469, y = 120.000, z = -850.212 }, rot = { x = 0.000, y = 243.950, z = 0.000 }, level = 20, drop_tag = "深渊法师", area_id = 401 },
	{ config_id = 152002, monster_id = 22010301, pos = { x = -52.414, y = 120.000, z = -853.284 }, rot = { x = 0.000, y = 70.237, z = 0.000 }, level = 20, drop_tag = "深渊法师", area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 152003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -42.706, y = 120.000, z = -849.815 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1152003, name = "ENTER_REGION_152003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152003", action = "action_EVENT_ENTER_REGION_152003" }
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
		regions = { 152003 },
		triggers = { "ENTER_REGION_152003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 152001, 152002 },
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
function condition_EVENT_ENTER_REGION_152003(context, evt)
	if evt.param1 ~= 152003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002152, 2)
	
	return 0
end