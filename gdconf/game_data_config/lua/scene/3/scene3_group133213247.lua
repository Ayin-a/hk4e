-- 基础信息
local base_info = {
	group_id = 133213247
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 247001, monster_id = 21010701, pos = { x = -3744.611, y = 257.474, z = -3144.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "丘丘人", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 247004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3741.538, y = 253.806, z = -3133.360 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1247004, name = "ENTER_REGION_247004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_247004", action = "action_EVENT_ENTER_REGION_247004" }
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
		regions = { 247004 },
		triggers = { "ENTER_REGION_247004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 247001 },
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
function condition_EVENT_ENTER_REGION_247004(context, evt)
	if evt.param1 ~= 247004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_247004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213247, 2)
	
	return 0
end