-- 基础信息
local base_info = {
	group_id = 111101319
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 319002, monster_id = 22010201, pos = { x = 2246.634, y = 263.240, z = -1679.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 319003, monster_id = 22010201, pos = { x = 2250.468, y = 263.361, z = -1681.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 319004, monster_id = 21010701, pos = { x = 2249.617, y = 263.161, z = -1685.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 319005, monster_id = 21010701, pos = { x = 2243.160, y = 263.850, z = -1679.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 319001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2249.875, y = 263.333, z = -1681.276 } }
}

-- 触发器
triggers = {
	{ config_id = 1319001, name = "ENTER_REGION_319001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_319001" }
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
		regions = { 319001 },
		triggers = { "ENTER_REGION_319001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 319002, 319003, 319004, 319005 },
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
function action_EVENT_ENTER_REGION_319001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101319, 2)
	
	return 0
end