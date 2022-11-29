-- 基础信息
local base_info = {
	group_id = 133302376
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 376001, monster_id = 20011201, pos = { x = -140.440, y = 234.132, z = 2932.785 }, rot = { x = 0.000, y = 83.802, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 376002, monster_id = 26090701, pos = { x = -136.953, y = 235.650, z = 2932.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 20 },
	{ config_id = 376003, monster_id = 20011201, pos = { x = -146.068, y = 232.911, z = 2928.743 }, rot = { x = 0.000, y = 83.802, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 376004, monster_id = 26090701, pos = { x = -138.786, y = 235.650, z = 2924.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 20 },
	{ config_id = 376005, monster_id = 20011201, pos = { x = -142.898, y = 234.094, z = 2923.696 }, rot = { x = 0.000, y = 15.213, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 376006, monster_id = 20011301, pos = { x = -140.906, y = 234.157, z = 2928.463 }, rot = { x = 0.000, y = 269.984, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1376007, name = "MONSTER_BATTLE_376007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_376007" }
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
		monsters = { 376001, 376005 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_376007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 376002, 376003, 376004, 376006 },
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
function action_EVENT_MONSTER_BATTLE_376007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302376, 2)
	
	return 0
end