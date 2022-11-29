-- 基础信息
local base_info = {
	group_id = 133008216
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 216001, monster_id = 20010801, pos = { x = 992.289, y = 341.919, z = -993.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 216002, monster_id = 20010801, pos = { x = 990.636, y = 342.084, z = -992.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 216003, monster_id = 20010801, pos = { x = 990.424, y = 342.422, z = -994.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 216004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 991.045, y = 342.153, z = -993.292 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1216004, name = "ENTER_REGION_216004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_216004", action = "action_EVENT_ENTER_REGION_216004" }
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
		regions = { 216004 },
		triggers = { "ENTER_REGION_216004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 216001, 216002, 216003 },
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
function condition_EVENT_ENTER_REGION_216004(context, evt)
	if evt.param1 ~= 216004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_216004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008216, 2)
	
	return 0
end