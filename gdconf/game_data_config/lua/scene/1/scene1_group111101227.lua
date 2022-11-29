-- 基础信息
local base_info = {
	group_id = 111101227
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 227001, monster_id = 21010301, pos = { x = 2254.049, y = 264.170, z = -1678.628 }, rot = { x = 0.000, y = 255.819, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 227002, monster_id = 21010301, pos = { x = 2251.239, y = 264.337, z = -1675.416 }, rot = { x = 0.000, y = 216.269, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 227003, monster_id = 21010401, pos = { x = 2256.257, y = 265.968, z = -1681.884 }, rot = { x = 0.000, y = 265.004, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 227004, monster_id = 21010401, pos = { x = 2248.666, y = 265.867, z = -1671.651 }, rot = { x = 0.000, y = 193.536, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 227005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2249.137, y = 263.336, z = -1680.131 } }
}

-- 触发器
triggers = {
	{ config_id = 1227005, name = "ENTER_REGION_227005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_227005" }
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
		regions = { 227005 },
		triggers = { "ENTER_REGION_227005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 227001, 227002, 227003, 227004 },
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
function action_EVENT_ENTER_REGION_227005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101227, 2)
	
	return 0
end