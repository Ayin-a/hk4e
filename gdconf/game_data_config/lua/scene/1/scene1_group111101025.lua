-- 基础信息
local base_info = {
	group_id = 111101025
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25002, monster_id = 21010201, pos = { x = 2189.365, y = 255.806, z = -1694.218 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 25003, monster_id = 21010201, pos = { x = 2189.559, y = 255.979, z = -1695.695 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 25004, monster_id = 21010201, pos = { x = 2207.149, y = 256.547, z = -1690.517 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 25005, monster_id = 21010201, pos = { x = 2208.142, y = 256.812, z = -1693.277 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 25008, monster_id = 21010401, pos = { x = 2187.040, y = 255.834, z = -1694.998 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 25009, monster_id = 21010401, pos = { x = 2212.745, y = 259.141, z = -1693.750 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 25001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2199.800, y = 255.618, z = -1692.984 } }
}

-- 触发器
triggers = {
	{ config_id = 1025001, name = "ENTER_REGION_25001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_25001" }
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
		regions = { 25001 },
		triggers = { "ENTER_REGION_25001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 25002, 25003, 25004, 25005, 25008, 25009 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_25001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101025, 2)
	
	return 0
end