-- 基础信息
local base_info = {
	group_id = 133102090
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 90001, monster_id = 21010901, pos = { x = 1685.598, y = 213.170, z = 162.741 }, rot = { x = 0.000, y = 11.850, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 5 },
	{ config_id = 90002, monster_id = 21010501, pos = { x = 1703.418, y = 212.480, z = 157.642 }, rot = { x = 0.000, y = 279.688, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 90004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1691.480, y = 210.261, z = 175.122 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1090004, name = "ENTER_REGION_90004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_90004", action = "action_EVENT_ENTER_REGION_90004" }
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
		regions = { 90004 },
		triggers = { "ENTER_REGION_90004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 90001, 90002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_90004(context, evt)
	if evt.param1 ~= 90004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_90004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102090, 2)
	
	return 0
end