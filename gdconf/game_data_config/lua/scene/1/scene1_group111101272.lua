-- 基础信息
local base_info = {
	group_id = 111101272
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 272001, monster_id = 21010401, pos = { x = 2235.905, y = 263.195, z = -1687.184 }, rot = { x = 0.000, y = 203.555, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 272002, monster_id = 21010401, pos = { x = 2244.531, y = 266.054, z = -1696.524 }, rot = { x = 0.000, y = 240.903, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 272003, monster_id = 21020201, pos = { x = 2238.779, y = 264.189, z = -1682.253 }, rot = { x = 0.000, y = 205.581, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 272004, monster_id = 21020201, pos = { x = 2248.071, y = 262.718, z = -1693.793 }, rot = { x = 0.000, y = 288.262, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 当玩家进入区域 显示伏击怪物
	{ config_id = 272005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2239.025, y = 262.209, z = -1696.251 } }
}

-- 触发器
triggers = {
	-- 当玩家进入区域 显示伏击怪物
	{ config_id = 1272005, name = "ENTER_REGION_272005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_272005" }
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
		regions = { 272005 },
		triggers = { "ENTER_REGION_272005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 272001, 272002, 272003, 272004 },
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
function action_EVENT_ENTER_REGION_272005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101272, 2)
	
	return 0
end