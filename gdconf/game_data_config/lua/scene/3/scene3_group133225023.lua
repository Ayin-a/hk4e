-- 基础信息
local base_info = {
	group_id = 133225023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23001, monster_id = 20010501, pos = { x = -6269.445, y = 221.948, z = -2816.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 23002, monster_id = 20010501, pos = { x = -6272.050, y = 222.397, z = -2822.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 23003, monster_id = 20010601, pos = { x = -6268.347, y = 221.253, z = -2819.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "大史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 23004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6271.910, y = 222.458, z = -2819.379 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1023004, name = "ENTER_REGION_23004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23004", action = "action_EVENT_ENTER_REGION_23004" }
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
		regions = { 23004 },
		triggers = { "ENTER_REGION_23004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 23001, 23002, 23003 },
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
function condition_EVENT_ENTER_REGION_23004(context, evt)
	if evt.param1 ~= 23004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225023, 2)
	
	return 0
end