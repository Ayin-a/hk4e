-- 基础信息
local base_info = {
	group_id = 111101271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271001, monster_id = 22010101, pos = { x = 2229.901, y = 261.726, z = -1704.502 }, rot = { x = 0.000, y = 274.389, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 271002, monster_id = 22010201, pos = { x = 2228.742, y = 264.537, z = -1714.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 271003, monster_id = 22010301, pos = { x = 2225.296, y = 264.117, z = -1695.161 }, rot = { x = 0.000, y = 199.681, z = 0.000 }, level = 1, drop_tag = "深渊法师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 伏击trigger
	{ config_id = 271004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2228.887, y = 261.380, z = -1704.276 } }
}

-- 触发器
triggers = {
	-- 伏击trigger
	{ config_id = 1271004, name = "ENTER_REGION_271004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_271004" }
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
		regions = { 271004 },
		triggers = { "ENTER_REGION_271004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 271001, 271002, 271003 },
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
function action_EVENT_ENTER_REGION_271004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101271, 2)
	
	return 0
end