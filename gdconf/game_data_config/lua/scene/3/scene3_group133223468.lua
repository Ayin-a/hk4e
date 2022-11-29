-- 基础信息
local base_info = {
	group_id = 133223468
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 468001, monster_id = 20011001, pos = { x = -6062.523, y = 200.115, z = -2967.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 468002, monster_id = 20011001, pos = { x = -6061.035, y = 200.115, z = -2968.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 468003, monster_id = 20011101, pos = { x = -6062.807, y = 200.017, z = -2970.239 }, rot = { x = 0.000, y = 298.667, z = 0.000 }, level = 32, drop_tag = "大史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 468004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6063.674, y = 200.108, z = -2968.091 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1468004, name = "ENTER_REGION_468004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_468004", action = "action_EVENT_ENTER_REGION_468004" }
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
		regions = { 468004 },
		triggers = { "ENTER_REGION_468004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 468001, 468002, 468003 },
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
function condition_EVENT_ENTER_REGION_468004(context, evt)
	if evt.param1 ~= 468004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_468004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223468, 2)
	
	return 0
end