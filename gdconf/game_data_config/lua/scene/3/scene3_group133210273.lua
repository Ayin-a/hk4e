-- 基础信息
local base_info = {
	group_id = 133210273
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 273001, monster_id = 20010901, pos = { x = -3754.589, y = 120.744, z = -649.434 }, rot = { x = 0.000, y = 316.839, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 17 },
	{ config_id = 273002, monster_id = 20010801, pos = { x = -3754.168, y = 120.382, z = -642.259 }, rot = { x = 0.000, y = 193.536, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 },
	{ config_id = 273003, monster_id = 20010801, pos = { x = -3760.442, y = 120.630, z = -644.787 }, rot = { x = 0.000, y = 114.118, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 273004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3757.231, y = 120.773, z = -645.948 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1273004, name = "ENTER_REGION_273004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_273004", action = "action_EVENT_ENTER_REGION_273004" }
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
		regions = { 273004 },
		triggers = { "ENTER_REGION_273004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 273001, 273002, 273003 },
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
function condition_EVENT_ENTER_REGION_273004(context, evt)
	if evt.param1 ~= 273004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_273004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210273, 2)
	
	return 0
end