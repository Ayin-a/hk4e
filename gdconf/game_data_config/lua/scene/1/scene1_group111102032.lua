-- 基础信息
local base_info = {
	group_id = 111102032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32001, gadget_id = 70310203, pos = { x = 1371.518, y = 315.648, z = -1919.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32002, gadget_id = 70310203, pos = { x = 1369.477, y = 315.823, z = -1932.376 }, rot = { x = 40.176, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32003, gadget_id = 70310203, pos = { x = 1374.746, y = 325.150, z = -1940.007 }, rot = { x = 28.079, y = 286.227, z = 301.730 }, level = 1 },
	{ config_id = 32004, gadget_id = 70310204, pos = { x = 1379.162, y = 315.516, z = -1922.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 透视生效region
	{ config_id = 32005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1375.821, y = 316.380, z = -1925.691 }, ability_group_list = { "RegionAbility_Dreamland_XRay" } }
}

-- 触发器
triggers = {
	-- 透视生效region
	{ config_id = 1032005, name = "ENTER_REGION_32005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 32001, 32002, 32003, 32004 },
		regions = { 32005 },
		triggers = { "ENTER_REGION_32005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================