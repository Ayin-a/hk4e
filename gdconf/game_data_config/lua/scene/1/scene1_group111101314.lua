-- 基础信息
local base_info = {
	group_id = 111101314
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314001, monster_id = 21010401, pos = { x = 2241.633, y = 263.066, z = -1701.217 }, rot = { x = 0.000, y = 180.507, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 314002, monster_id = 21010401, pos = { x = 2241.993, y = 265.000, z = -1709.774 }, rot = { x = 0.000, y = 284.494, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 314003, monster_id = 20011101, pos = { x = 2239.524, y = 263.438, z = -1704.891 }, rot = { x = 0.000, y = 203.564, z = 0.000 }, level = 1, drop_tag = "大史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 314004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2240.229, y = 263.773, z = -1705.431 } }
}

-- 触发器
triggers = {
	{ config_id = 1314004, name = "ENTER_REGION_314004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_314004" }
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
		regions = { 314004 },
		triggers = { "ENTER_REGION_314004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 314001, 314002, 314003 },
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
function action_EVENT_ENTER_REGION_314004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101314, 2)
	
	return 0
end