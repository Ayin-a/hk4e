-- 基础信息
local base_info = {
	group_id = 133310532
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 532001, monster_id = 25020201, pos = { x = -2252.989, y = 359.128, z = 4305.625 }, rot = { x = 0.000, y = 180.658, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 26 },
	{ config_id = 532002, monster_id = 25010501, pos = { x = -2248.658, y = 357.514, z = 4299.752 }, rot = { x = 0.000, y = 231.574, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9003, area_id = 26 },
	{ config_id = 532003, monster_id = 25210402, pos = { x = -2251.643, y = 356.941, z = 4296.922 }, rot = { x = 0.000, y = 192.989, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 532005, gadget_id = 70330397, pos = { x = -2188.008, y = 328.963, z = 4237.976 }, rot = { x = 9.839, y = 115.769, z = 2.646 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 532006, gadget_id = 70330266, pos = { x = -2251.362, y = 357.590, z = 4301.901 }, rot = { x = 355.496, y = 0.057, z = 1.461 }, level = 32, area_id = 26 },
	{ config_id = 532007, gadget_id = 70330426, pos = { x = -2251.501, y = 358.120, z = 4301.789 }, rot = { x = 3.138, y = 340.023, z = 329.472 }, level = 32, area_id = 26 },
	{ config_id = 532008, gadget_id = 70330397, pos = { x = -2247.357, y = 356.674, z = 4297.032 }, rot = { x = 0.000, y = 139.335, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 532004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2251.985, y = 357.430, z = 4299.372 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1532004, name = "ENTER_REGION_532004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_532004", action = "action_EVENT_ENTER_REGION_532004" }
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
		gadgets = { 532005, 532006, 532007, 532008 },
		regions = { 532004 },
		triggers = { "ENTER_REGION_532004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 532001, 532003 },
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
function condition_EVENT_ENTER_REGION_532004(context, evt)
	if evt.param1 ~= 532004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_532004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310532, 2)
	
	return 0
end