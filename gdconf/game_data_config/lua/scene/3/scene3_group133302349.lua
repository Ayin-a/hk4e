-- 基础信息
local base_info = {
	group_id = 133302349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349004, monster_id = 26090201, pos = { x = -274.625, y = 135.257, z = 2209.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 349005, monster_id = 26090201, pos = { x = -272.369, y = 135.198, z = 2214.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 349010, monster_id = 26120101, pos = { x = -274.776, y = 134.608, z = 2212.236 }, rot = { x = 0.000, y = 125.868, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 349002, gadget_id = 70220005, pos = { x = -273.652, y = 135.250, z = 2208.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 349003, gadget_id = 70220005, pos = { x = -274.130, y = 135.428, z = 2207.752 }, rot = { x = 0.572, y = 50.290, z = 89.525 }, level = 27, area_id = 24 },
	{ config_id = 349008, gadget_id = 70220005, pos = { x = -271.949, y = 135.194, z = 2209.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 349011, gadget_id = 70330197, pos = { x = -282.242, y = 107.162, z = 2224.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 349012, gadget_id = 70330197, pos = { x = -272.620, y = 121.604, z = 2227.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 349013, gadget_id = 70330197, pos = { x = -285.247, y = 118.728, z = 2201.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 349001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -279.309, y = 134.617, z = 2211.552 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1349001, name = "ENTER_REGION_349001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_349001", action = "action_EVENT_ENTER_REGION_349001" }
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
		gadgets = { 349002, 349003, 349008, 349011, 349012, 349013 },
		regions = { 349001 },
		triggers = { "ENTER_REGION_349001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 349004, 349005, 349010 },
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
function condition_EVENT_ENTER_REGION_349001(context, evt)
	if evt.param1 ~= 349001 then return false end
	
	-- 判断是区域349001
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 349001 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_349001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302349, 2)
	
	return 0
end