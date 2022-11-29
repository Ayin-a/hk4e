-- 基础信息
local base_info = {
	group_id = 133303541
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 541001, monster_id = 28060101, pos = { x = -1794.707, y = 90.700, z = 3468.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 541002, monster_id = 28060101, pos = { x = -1785.650, y = 90.700, z = 3448.521 }, rot = { x = 0.000, y = 239.720, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 541003, monster_id = 28060101, pos = { x = -1808.546, y = 90.700, z = 3431.484 }, rot = { x = 0.000, y = 41.517, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 541005, monster_id = 28060101, pos = { x = -1812.179, y = 90.700, z = 3499.215 }, rot = { x = 0.000, y = 332.306, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 541006, monster_id = 28060101, pos = { x = -1808.366, y = 90.700, z = 3528.965 }, rot = { x = 0.000, y = 324.764, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 541007, monster_id = 28060101, pos = { x = -1790.081, y = 91.341, z = 3415.137 }, rot = { x = 0.000, y = 97.109, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 23 }
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
	{ config_id = 1541008, name = "MONSTER_BATTLE_541008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_541008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 541004, monster_id = 28060101, pos = { x = -1835.228, y = 90.722, z = 3484.184 }, rot = { x = 0.000, y = 161.582, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 23 }
	}
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
		monsters = { 541002, 541003, 541007 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_541008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 541001, 541005, 541006 },
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
function action_EVENT_MONSTER_BATTLE_541008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303541, 2)
	
	return 0
end