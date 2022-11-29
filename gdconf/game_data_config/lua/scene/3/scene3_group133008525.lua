-- 基础信息
local base_info = {
	group_id = 133008525
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 525001, monster_id = 20010801, pos = { x = 1069.744, y = 465.483, z = -831.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 525002, monster_id = 20010801, pos = { x = 1073.024, y = 465.797, z = -833.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 525003, monster_id = 20010801, pos = { x = 1072.744, y = 466.002, z = -829.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 525004, shape = RegionShape.SPHERE, radius = 6, pos = { x = 1070.908, y = 464.941, z = -832.136 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1525004, name = "ENTER_REGION_525004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_525004", action = "action_EVENT_ENTER_REGION_525004" }
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
		regions = { 525004 },
		triggers = { "ENTER_REGION_525004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 525001, 525002, 525003 },
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
function condition_EVENT_ENTER_REGION_525004(context, evt)
	if evt.param1 ~= 525004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_525004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008525, 2)
	
	return 0
end