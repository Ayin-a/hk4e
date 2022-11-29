-- 基础信息
local base_info = {
	group_id = 133210042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42003, monster_id = 26060101, pos = { x = -3986.244, y = 201.810, z = -1161.497 }, rot = { x = 0.000, y = 0.000, z = 232.120 }, level = 32, drop_tag = "雷萤", area_id = 17 },
	{ config_id = 42007, monster_id = 26060101, pos = { x = -3984.916, y = 201.810, z = -1165.255 }, rot = { x = 0.000, y = 329.141, z = 0.000 }, level = 30, drop_tag = "雷萤", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 42005, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3986.971, y = 201.810, z = -1163.587 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1042005, name = "ENTER_REGION_42005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42005", action = "action_EVENT_ENTER_REGION_42005" }
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
		regions = { 42005 },
		triggers = { "ENTER_REGION_42005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 42003, 42007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_42005(context, evt)
	if evt.param1 ~= 42005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"AddRegion"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "AddRegion", 133210040) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_42005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210042, 2)
	
	return 0
end